import pandas as pd

# Load the dataset
data = pd.read_csv('Amazon Sales data.csv')

# Convert date columns to datetime
data['Order Date'] = pd.to_datetime(data['Order Date'], errors='coerce')
data['Ship Date'] = pd.to_datetime(data['Ship Date'], errors='coerce')

# Extract year and month from the order date
data['Order Year'] = data['Order Date'].dt.year
data['Order Month'] = data['Order Date'].dt.month

# Save the cleaned data to a new CSV file
data.to_csv('cleaned_amazon_sales_data.csv', index=False)



