import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
plt.style.use("grayscale")

data_raw = pd.read_csv("../data_ml.csv")
idx_date = (data_raw['date'] > '1999-12-31') & (data_raw['date'] < '2019-01-01')
data_ml = data_raw.loc[idx_date, :].copy()
del data_raw

# Keep the feature's column names (hard-coded, beware!)
features= list(data_ml.iloc[:,2:95].columns)
features_short =["Div_Yld", "Eps", "Mkt_Cap_12M_Usd", "Mom_11M_Usd",
                    "Ocf", "Pb", "Vol1Y_Usd"]

# categories return label
df_median = data_ml[['date','R1M_Usd','R12M_Usd']].groupby(['date']).median()
df_median.rename(columns = {"R1M_Usd": "R1M_Usd_median", "R12M_Usd": "R12M_Usd_median"},
                 inplace=True)
df = pd.merge(data_ml, df_median, how='left', on='date')
data_ml['R1M_Usd_C'] = np.where(df['R1M_Usd'] > df['R1M_Usd_median'], 1.0, 0.0)
data_ml['R12M_Usd_C'] = np.where(df['R12M_Usd'] > df['R12M_Usd_median'], 1.0, 0.0)
data_ml.sort_values(["stock_id","date"], inplace=True)
data_ml.reset_index(drop=True, inplace=True)
del df_median, df

# train_test_split
separation_date = "2014-01-15"
training_sample = data_ml[data_ml['date'] < separation_date].reset_index(drop=True)
testing_sample = data_ml[data_ml['date'] >= separation_date].reset_index(drop=True)

# A list of all stock_ids
stock_ids = data_ml['stock_id'].unique()
# compute the number of data points per stock
stock_days = data_ml[['date','stock_id']].groupby(['stock_id']).count().reset_index()
# Stocks with full data
stock_ids_short = stock_days.loc[stock_days['date'] == (stock_days['date'].max())]
stock_ids_short = stock_ids_short['stock_id'].unique()
# compute returns in matrix format
is_stock_ids_short = data_ml['stock_id'].isin(stock_ids_short)
returns = data_ml[is_stock_ids_short].pivot(index='date', columns='stock_id', values='R1M_Usd')