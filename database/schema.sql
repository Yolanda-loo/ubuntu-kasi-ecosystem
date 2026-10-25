CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  phone VARCHAR(50),
  wallet_balance NUMERIC(12,2) DEFAULT 0,
  kasi_koin_balance INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE merchants (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  category VARCHAR(100),
  location VARCHAR(255),
  status VARCHAR(50) DEFAULT 'active',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  merchant_id INTEGER REFERENCES merchants(id),
  amount NUMERIC(12,2),
  currency VARCHAR(10) DEFAULT 'ZAR',
  transaction_type VARCHAR(50),
  status VARCHAR(50) DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE rewards (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  source VARCHAR(100),
  points INTEGER DEFAULT 0,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
