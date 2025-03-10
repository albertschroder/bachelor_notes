SELECT capex_abn,-- Abnormal corporate investment 
       z_score,                         -- Altman Z-score 
       ami_126d,                        -- Amihud Measure 
       at_gr1,                          -- Asset Growth 
       tangibility,                     -- Asset tangibility 
       sale_bev,                        -- Assets turnover 
       at_me,                           -- Assets-to-market 
       at_be,                           -- Book leverage 
       bev_mev,                         -- Book-to-market enterprise value 
       be_me,                           -- Book-to-market equity 
       capx_gr1,                        -- CAPEX growth 
       capx_gr2,                        -- CAPEX growth 
       capx_gr3,                        -- CAPEX growth 
       at_turnover,                     -- Capital turnover 
       ocfq_saleq_std,                  -- Cash flow volatility 
       cop_at,                          -- Cash-based operating profits-to-book assets 
       cop_atl1,                        -- Cash-based operating profits-to-lagged book assets 
       cash_at,                         -- Cash-to-assets 
       dgp_dsale,                       -- Change gross margin minus change sales 
       be_gr1a,                         -- Change in common equity 
       coa_gr1a,                        -- Change in current operating assets 
       col_gr1a,                        -- Change in current operating liabilities 
       cowc_gr1a,                       -- Change in current operating working capital 
       fnl_gr1a,                        -- Change in financial liabilities 
       lti_gr1a,                        -- Change in long-term investments 
       lnoa_gr1a,                       -- Change in long-term net operating assets 
       nfna_gr1a,                       -- Change in net financial assets 
       nncoa_gr1a,                      -- Change in net noncurrent operating assets 
       noa_gr1a,                        -- Change in net operating assets 
       ncoa_gr1a,                       -- Change in noncurrent operating assets 
       ncol_gr1a,                       -- Change in noncurrent operating liabilities 
       ocf_at_chg1,                     -- Change in operating cash flow to assets 
       niq_at_chg1,                     -- Change in quarterly return on assets 
       niq_be_chg1,                     -- Change in quarterly return on equity 
       sti_gr1a,                        -- Change in short-term investments 
       ppeinv_gr1a,                     -- Change PPE and Inventory 
       dsale_dinv,                      -- Change sales minus change Inventory 
       dsale_drec,                      -- Change sales minus change receivables 
       dsale_dsga,                      -- Change sales minus change SG&A 
       dolvol_var_126d,                 -- Coefficient of variation for dollar trading volume 
       turnover_var_126d,               -- Coefficient of variation for share turnover 
       gvkey,                           -- Compustat gvkey 
       iid,                             -- Compustat iid 
       comp_exchg,                      -- Compustat: Exchg 
       comp_tpci,                       -- Compustat: TPCI 
       coskew_21d,                      -- Coskewness 
       permco,                          -- CRSP permno 
       permno,                          -- CRSP permno 
       crsp_exchcd,                     -- CRSP: Exchange code 
       crsp_shrcd,                      -- CRSP: Share code 
       prc_highprc_252d,                -- Current price to high price over last year 
       date,                            -- Day of last price observation 
       debt_me,                         -- Debt-to-market 
       beta_dimson_21d,                 -- Dimson beta 
       div12m_me,                       -- Dividend yield 
       dolvol_126d,                     -- Dollar trading volume 
       dolvol,                          -- Dollar trading volume 
       betadown_252d,                   -- Downside beta 
       ni_ar1,                          -- Earnings persistence 
       earnings_variability,            -- Earnings variability 
       ni_ivol,                         -- Earnings volatility 
       ni_me,                           -- Earnings-to-price 
       ebitda_mev,                      -- Ebitda-to-market enterprise value 
       eom,                             -- End of month 
       eq_dur,                          -- Equity duration 
       eqnpo_12m,                       -- Equity net payout 
       ret_exc,                         -- Excess return in USD 
       ret_exc_lead1m,                  -- Excess return in USD in month t+1 
       excntry,                         -- Exchange country 
       fx,                              -- Exchange rate local to USD 
       ff49,                            -- Fama-French 49 industry code 
       age,                             -- Firm age 
       betabab_1260d,                   -- Frazzini-Pedersen market beta 
       fcf_me,                          -- Free cash flow-to-price 
       gics,                            -- GICS code 
       gp_at,                           -- Gross profits-to-assets 
       gp_atl1,                         -- Gross profits-to-lagged assets 
       debt_gr3,                        -- Growth in book debt 
       rmax5_21d,                       -- Highest 5 days of return 
       rmax5_rvol_21d,                  -- Highest 5 days of return scaled by volatility 
       prc_high,                        -- Highest daily closing price during month 
       emp_gr1,                         -- Hiring rate 
       id,                              -- Id 
       iskew_capm_21d,                  -- Idiosyncratic skewness from the CAPM 
       iskew_ff3_21d,                   -- Idiosyncratic skewness from the Fama-French 3-factor model 
       iskew_hxz4_21d,                  -- Idiosyncratic skewness from the q-factor model 
       ivol_capm_21d,                   -- Idiosyncratic volatility from the CAPM 
       ivol_capm_252d,                  -- Idiosyncratic volatility from the CAPM 
       ivol_ff3_21d,                    -- Idiosyncratic volatility from the Fama-French 3-factor model 
       ivol_hxz4_21d,                   -- Idiosyncratic volatility from the q-factor model 
       common,                          -- Indicator: Common stock 
       exch_main,                       -- Indicator: Main exchange observation 
       obs_main,                        -- Indicator: Main return observation 
       bidask,                          -- Indicator: Price based on average between bid and ask 
       primary_sec,                     -- Indicator: Primary security 
       source_crsp,                     -- Indicator: Return data from CRSP 
       ival_me,                         -- Intrinsic value-to-market 
       inv_gr1a,                        -- Inventory change 
       inv_gr1,                         -- Inventory growth 
       kz_index,                        -- Kaplan-Zingales index 
       sale_emp_gr1,                    -- Labor force efficiency 
       aliq_at,                         -- Liquidity of book assets 
       aliq_mat,                        -- Liquidity of market assets 
       curcd,                           -- Local currency code 
       ret_60_12,                       -- Long-term reversal 
       prc_low,                         -- Lowest daily closing price during month 
       beta_60m,                        -- Market Beta 
       corr_1260d,                      -- Market correlation 
       market_equity,                   -- Market equity 
       me,                              -- Market equity 
       me_company,                      -- Market equity company 
       rmax1_21d,                       -- Maximum daily return 
       mispricing_mgmt,                 -- Mispricing factor: Management 
       mispricing_perf,                 -- Mispricing factor: Performance 
       ret_lag_dif,                     -- Months between prices used to calculate returns 
       naics,                           -- NAICS code 
       dbnetis_at,                      -- Net debt issuance 
       netdebt_me,                      -- Net debt-to-price 
       eqnetis_at,                      -- Net equity issuance 
       noa_at,                          -- Net operating assets 
       eqnpo_me,                        -- Net payout yield 
       chcsho_12m,                      -- Net stock issues 
       netis_at,                        -- Net total issuance 
       ni_inc8q,                        -- Number of consecutive quarters with earnings increases 
       tvol,                            -- Number of shares traded during month 
       zero_trades_21d,                 -- Number of zero trades with turnover as tiebreaker 
       zero_trades_252d,                -- Number of zero trades with turnover as tiebreaker 
       zero_trades_126d,                -- Number of zero trades with turnover as tiebreaker 
       o_score,                         -- Ohlson O-score 
       oaccruals_at,                    -- Operating accruals 
       ocf_at,                          -- Operating cash flow to assets 
       ocf_me,                          -- Operating cash flow-to-market 
       opex_at,                         -- Operating leverage 
       op_at,                           -- Operating profits-to-book assets 
       ope_be,                          -- Operating profits-to-book equity 
       op_atl1,                         -- Operating profits-to-lagged book assets 
       ope_bel1,                        -- Operating profits-to-lagged book equity 
       eqpo_me,                         -- Payout yield 
       oaccruals_ni,                    -- Percent operating accruals 
       taccruals_ni,                    -- Percent total accruals 
       f_score,                         -- Pitroski F-score 
       ret_12_1,                        -- Price momentum t-12 to t-1 
       ret_12_7,                        -- Price momentum t-12 to t-7 
       ret_3_1,                         -- Price momentum t-3 to t-1 
       ret_6_1,                         -- Price momentum t-6 to t-1 
       ret_9_1,                         -- Price momentum t-9 to t-1 
       prc,                             -- Price per share in dollars 
       prc_local,                       -- Price per share in local currency 
       ebit_sale,                       -- Profit margin 
       qmj,                             -- Quality minus Junk: Composite 
       qmj_growth,                      -- Quality minus Junk: Growth 
       qmj_prof,                        -- Quality minus Junk: Profitability 
       qmj_safety,                      -- Quality minus Junk: Safety 
       niq_at,                          -- Quarterly return on assets 
       niq_be,                          -- Quarterly return on equity 
       rd5_at,                          -- R&D capital-to-book assets 
       rd_me,                           -- R+D-to-market 
       rd_sale,                         -- R+D-to-sales 
       resff3_12_1,                     -- Residual momentum t-12 to t-1 
       resff3_6_1,                      -- Residual momentum t-6 to t-1 
       ni_be,                           -- Return on equity 
       ebit_bev,                        -- Return on net operating assets 
       rvol_21d,                        -- Return volatility 
       saleq_gr1,                       -- Sales growth 
       sale_gr1,                        -- Sales Growth 
       sale_gr3,                        -- Sales Growth 
       sale_me,                         -- Sales-to-market 
       adjfct,                          -- Share price adjustment factor 
       turnover_126d,                   -- Share turnover 
       shares,                          -- Shares outstanding 
       ret_1_0,                         -- Short-term reversal 
       sic,                             -- SIC code 
       size_grp,                        -- Size group 
       niq_su,                          -- Standardized earnings surprise 
       saleq_su,                        -- Standardized Revenue surprise 
       tax_gr1a,                        -- Tax expense surprise 
       pi_nix,                          -- Taxable income-to-book income 
       bidaskhl_21d,                    -- The high-low bid-ask spread 
       taccruals_at,                    -- Total accruals 
       ret_local,                       -- Total return in local currency 
       ret,                             -- Total return in USD 
       rskew_21d,                       -- Total skewness 
       seas_1_1an,                      -- Year 1-lagged return, annual 
       seas_1_1na,                      -- Year 1-lagged return, nonannual 
       seas_11_15an,                    -- Years 11-15 lagged returns, annual 
       seas_11_15na,                    -- Years 11-15 lagged returns, nonannual 
       seas_16_20an,                    -- Years 16-20 lagged returns, annual 
       seas_16_20na,                    -- Years 16-20 lagged returns, nonannual 
       seas_2_5an,                      -- Years 2-5 lagged returns, annual 
       seas_2_5na,                      -- Years 2-5 lagged returns, nonannual 
       seas_6_10an,                     -- Years 6-10 lagged returns, annual 
       seas_6_10na                      -- Years 6-10 lagged returns, nonannual 

FROM   contrib.global_factor

WHERE      common = 1
       AND exch_main = 1
       AND primary_sec = 1
       AND obs_main = 1
       AND excntry = 'USA' 