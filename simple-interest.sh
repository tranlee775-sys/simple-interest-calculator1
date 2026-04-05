#!/bin/bash
# Script này tính toán lãi suất đơn.
# Tác giả: GitHub User
# Các tham số bổ sung:
# p, số tiền gốc
# t, thời gian tính bằng năm
# r, lãi suất hàng năm

echo "Nhập số tiền vốn gốc (principal):"
read p
echo "Nhập lãi suất hàng năm (rate of interest):"
read r
echo "Nhập thời gian (tính bằng năm):"
read t

# Công thức tính lãi suất đơn: I = P * R * T / 100
# Sử dụng 'bc' để tính toán số thập phân nếu cần
interest=$(echo "scale=2; $p * $r * $t / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "---------------------------------------"
echo "Số tiền lãi là: $interest"
echo "Tổng số tiền cuối kỳ là: $total"
