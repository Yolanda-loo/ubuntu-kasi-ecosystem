import React from "react";
import { View, Text, StyleSheet } from "react-native";

export default function App() {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>KasiKoin</Text>
      <Text style={styles.subtitle}>Township wallet + rewards</Text>
      <Text style={styles.balance}>Wallet balance: 12,450 KASI</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#0f172a",
  },
  title: {
    color: "#fff",
    fontSize: 32,
    fontWeight: "700",
  },
  subtitle: {
    color: "#cbd5e1",
    marginTop: 8,
  },
  balance: {
    color: "#34d399",
    marginTop: 16,
    fontSize: 18,
    fontWeight: "600",
  },
});
