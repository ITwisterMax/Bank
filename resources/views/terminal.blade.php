@extends('layouts.app')

@section('content')
    <div class="container terminal-block">
        <div class="terminal" style="background-image: url('{{ asset('/assets/atm.jpg')}}');">
            @csrf
            <div class="true">
                <div class="form-group col-md-6 terminal-text">
                    <label for="card_number"
                           class="col-md-12 col-form-label text-md-center">{{ __('Card Number') }}</label>
                    <input name="card_number" id="card_number" class="form-control" type="text">
                </div>
                <div class="form-group col-md-6 terminal-text">
                    <label for="pin_code"
                           class="col-md-12 col-form-label text-md-center">{{ __('Pin-code') }}</label>
                    <input name="pin_code" id="pin_code" class="form-control" type="password">
                </div>
                <br/>
                <div class="form-group col-md-6">
                    <button class="form-control btn-dark" id="enter_card" disabled>Enter Card</button>
                </div>
            </div>
            <div class="operations">
                <div class="form-group col-md-6">
                    <label for="operation_type"
                           class="col-md-12 col-form-label text-md-center terminal-text">{{ __('Select Option:') }}</label>
                    <select id="operation_type" name="operation_type" class="form-control">
                        <option>Select Option</option>
                        <option value="getMoneyFromCredit" class="credit-option">Get Money from Credit</option>
                        <option value="interestPayment" class="credit-option">Interest Payment</option>
                        <option value="endCredit" class="credit-option">End Credit</option>
                        <option value="getPercentFromInterestAccount" class="deposit-option">Get Percent from Account</option>
                        <option value="endDeposit" class="deposit-option">End Deposit</option>
                        <option value="getAccountBalance">Account Balance</option>
                        <option value="cancel">Cancel</option>
                    </select>
                </div>
                <div class="form-group col-md-6 sum">
                    <label for="sum"
                           class="col-md-12 col-form-label text-md-center terminal-text">{{ __('Enter sum') }}</label>
                    <input id="sum" name="sum" class="form-control" type="text">
                </div>
                <br/>
                <div class="form-group col-md-6">
                    <button class="form-control btn-dark" id="enter">Enter</button>
                </div>
            </div>
        </div>
    </div>
@endsection
