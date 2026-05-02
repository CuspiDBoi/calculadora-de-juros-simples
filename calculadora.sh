#!/bin/bash

# Calculadora de Juros Simples
# Fórmula: J = P * i * t
# Onde: P = Principal, i = Taxa (em decimal), t = Tempo

echo "--- Calculadora de Juros Simples ---"

# Entrada de dados
read -p "Digite o Capital Inicial (P): " principal
read -p "Digite a Taxa de Juros anual (em %): " taxa
read -p "Digite o Tempo (em anos): " tempo

# Cálculo usando 'bc' para suportar decimais
# Dividimos a taxa por 100 para converter de % para decimal
juros=$(echo "scale=2; $principal * ($taxa / 100) * $tempo" | bc -l)
total=$(echo "scale=2; $principal + $juros" | bc -l)

echo "------------------------------------"
echo "Total de Juros: R$ $juros"
echo "Montante Final: R$ $total"
echo "------------------------------------"