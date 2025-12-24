import pandas as pd

# Load tables
transactions = pd.read_csv("transactions.csv")
products = pd.read_csv("products.csv")

# Standardize columns
transactions.columns = transactions.columns.str.strip().str.lower()
products.columns = products.columns.str.strip().str.lower()

# Merge tables
df = pd.merge(
    transactions,
    products,
    on='productid',
    how='inner'
)

# Profit calculations
df['profit_per_unit'] = df['unitprice'] - df['costprice']
df['total_profit'] = df['profit_per_unit'] * df['quantity']
df['profit_margin'] = (df['profit_per_unit'] / df['unitprice']) * 100

product_level = df.groupby('productname').agg({
    'quantity': 'sum',
    'profit_margin': 'mean'
}).reset_index()

correlation = product_level['quantity'].corr(
    product_level['profit_margin']
)

print("Correlation between Sales Volume and Profitability:", correlation)
