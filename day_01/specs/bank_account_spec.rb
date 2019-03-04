# bank_account_spec.rb
require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account')

class TestBankAccount < MiniTest::Test
  def test_account_name
    account = BankAccount.new("Bob", 1000, "Business")
    assert_equal("Bob", account.holder_name)
  end

  def test_account_balance
    account = BankAccount.new('Alice', 5000, 'business')
    assert_equal(5000, account.amount)
  end

  def test_account_type
    account = BankAccount.new('Alice', 5000, 'business')
    assert_equal('business', account.type)
  end

  def test_set_account_name
    account = BankAccount.new('Alice', 5000, 'business')
    account.holder_name = "Bob"
    assert_equal('Bob', account.holder_name)
  end

  def test_pay_into_account
    account = BankAccount.new('Alice', 5000, 'business')
    account.pay_in(1000)
    assert_equal(6000, account.amount)
  end

  def test_withdraw_into_account
    account = BankAccount.new('Alice', 5000, 'business')
    account.withdraw(1000)
    assert_equal(4000, account.amount)
  end


  def test_set_account_type
    account = BankAccount.new('Alice', 5000, 'business')
    account.type = "personal"
    assert_equal('personal', account.type)
  end

  def test_monthly_fee_business
    account = BankAccount.new('Alice', 5000, 'business')
    account.pay_monthly_fee
    assert_equal(4950, account.amount)
  end

  def test_monthly_fee_personal
    account = BankAccount.new('darren', 5000, 'personal')
    account.pay_monthly_fee
    assert_equal(4990, account.amount)
  end
end
