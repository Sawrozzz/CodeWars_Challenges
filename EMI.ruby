def calculate_emi(principal, annual_interest_rate, loan_tenure_months)
  
    monthly_interest_rate = annual_interest_rate / 12 / 100
    num_payments = loan_tenure_months
  
    emi = principal * monthly_interest_rate * (1 + monthly_interest_rate)**num_payments
    emi /= ((1 + monthly_interest_rate)**num_payments - 1)
  
    emi
  end
  

  print "Enter the principal amount: "
  principal = gets.to_f
  
  print "Enter the annual interest rate (in percentage): "
  annual_interest_rate = gets.to_f
  
  print "Enter the loan tenure in months: "
  loan_tenure_months = gets.to_i
  

  emi = calculate_emi(principal, annual_interest_rate, loan_tenure_months)
  puts "Your Equated Monthly Installment (EMI) is: #{emi.round(2)} RS"
  