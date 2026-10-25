const { users, merchants, transactions } = require("../store");

function sanitizeUser(user) {
  if (!user) return null;
  const { passwordHash, ...safeUser } = user;
  return safeUser;
}

function getUserById(userId) {
  return users.find((user) => user.id === userId) || null;
}

function getUserByEmail(email) {
  return users.find((user) => user.email.toLowerCase() === email.toLowerCase()) || null;
}

module.exports = {
  users,
  merchants,
  transactions,
  sanitizeUser,
  getUserById,
  getUserByEmail,
};
