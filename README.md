# 加班費 TDD 練習

## 加班費規則

平日加班：
1-2 hrs salary * hr * 1.34
3-4 hrs s * hr * 1.67

休息日加班：
1-2 hrs salary * hr * 1.34
3-8 hrs s * hr * 1.67
9-12 hrs s * hr * 2.67

假日：
1-8 hrs 月薪：s * 8hr
1-8 hrs 時薪：s * hr * 2
9-10 hrs s * hr * 2.34
11-12 hrs s * 2.67

ref: [臺北市政府交通局](https://www.dot.gov.taipei/News_Content.aspx?n=8AF5CCCCF7B8610A&sms=87415A8B9CE81B16&s=7F22D0A704345945)

## 目標

1. 使用 [RSpec](https://rspec.info/) 撰寫適當的測試個案，並通過全部測試。
2. 關於時間的問題，可適時使用 [timecop](https://github.com/travisjeffery/timecop) 套件

## 設定

1. 下載本專案後，執行 `bundle install` 指令安裝所需套件。
2. 執行 `rspec` 並通過全部測試。

by eddie@5xcampus.com
