import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import warnings

warnings.filterwarnings('ignore')

# Import data 
data_raw = pd.read_csv("../data_ml.csv")

# Clean data based on dates
idx_date = data_raw.index[(data_raw['date'] > '1999-12-31') & (data_raw['date'] < '2019-01-01')].tolist()
data_ml = data_raw.iloc[idx_date]

# Extract features
features = list(data_ml.iloc[:,2:95].columns) 
features_short = ["Div_Yld", "Eps", "Mkt_Cap_12M_Usd", "Mom_11M_Usd", "Ocf", "Pb", "Vol1Y_Usd"]

# Extract relevant data and create placeholder dataframe
col_feat_Div_Yld = data_ml.columns.get_loc('Div_Yld')
is_custom_date = data_ml['date'] == '2000-02-29'
df_median=[]
df=[]

# Calculate medians to use for creating categorical variable
df_median = data_ml[['date','R1M_Usd','R12M_Usd']].groupby(['date']).median() 
df_median.rename(columns = {"R1M_Usd": "R1M_Usd_median", "R12M_Usd": "R12M_Usd_median"},inplace=True)
df = pd.merge(data_ml,df_median,how='left', on=['date'])

# Create categorical variables
data_ml['R1M_Usd_C'] = np.where(df['R1M_Usd'] > df['R1M_Usd_median'], 1.0, 0.0)
data_ml['R12M_Usd_C'] = np.where(df['R12M_Usd'] > df['R12M_Usd_median'], 1.0, 0.0)

# Remove the dataframes again to keep the programme light
df_median=[]
df=[]

# Create short id and date list
stock_ids_short=[]
stock_days=[]
stock_ids=data_ml['stock_id'].unique()
stock_days=data_ml[['date','stock_id']].groupby(['stock_id']).count().reset_index()
stock_ids_short=stock_days.loc[stock_days['date'] == (stock_days['date'].max())]
stock_ids_short=stock_ids_short['stock_id'].unique() 

# Extract all stocks and calculate returns
is_stock_ids_short=data_ml['stock_id'].isin(stock_ids_short)  
returns=data_ml[is_stock_ids_short].pivot(index='date',columns='stock_id',values='R1M_Usd') # compute returns in matrix format

# Define test and train data
separation_date = "2014-01-15"
training_sample = data_ml[(data_ml['date'] < separation_date)]
testing_sample = data_ml[(data_ml['date'] >= separation_date)]