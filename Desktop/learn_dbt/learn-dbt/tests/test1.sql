
-- Use the `ref` function to select from other models

select sum(c_acctbal)  as acoount_sum  from  

{{ref ('playing_test_tests')}}
having sum(c_acctbal)<100000000