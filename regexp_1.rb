# ruby regexp_1.rb

text = <<TEL
tel: 0120-007-1234
tel: 090-1234-7654
tel: 0795(11)9078
tel: 02992-2-1789
tel: 999-999-9999
TEL

p text.scan (/\d\d\d-\d\d\d-\d\d\d\d/)
p text.scan (/\d{2,5}[-(]\d{1,4}[-)]\d{4}/)
p text.scan (/0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/)
