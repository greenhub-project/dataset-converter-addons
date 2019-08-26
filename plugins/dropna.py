import pandas as pd


def apply(df):
  # drop all rows with at least one nan value
  df = df.dropna()

  return df