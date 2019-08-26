import numpy as np
import pandas as pd


def apply(df):
  # explicit columns dtypes conversion
  cols = [
    'bluetooth_enabled',
    'location_enabled',
    'power_saver_enabled',
    'flashlight_enabled',
    'nfc_enabled',
    'unknown_sources',
    'developer_mode'
  ]
  for x in cols:
    df.loc[:, x] = df[x].astype(np.uint8)

  df.info(memory_usage='deep')

  return df