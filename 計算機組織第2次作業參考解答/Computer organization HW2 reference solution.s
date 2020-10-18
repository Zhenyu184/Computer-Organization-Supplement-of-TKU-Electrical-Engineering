		.data
title:	.asciiz "計算機組織第2次作業參考解答\n"
str1:	.asciiz "請輸入費式數列參數:"
str2:	.asciiz "答案:"
		.extern foobar 4
	
	
	#######################################
	#                                     #
	#   注意這是半成品，解答將於10/26助教課公布    #
	#                                     #
	#######################################
	
        .text
        .globl main
main:	# 主程式開始
		la $a0, title     		
		li $v0, 4       		
        syscall         		# 呼叫系統print
        lw $t1, foobar
		
		# 印出"請輸入費式數列參數:"
		la $a0, str1     		
		li $v0, 4       		
        syscall         		
		
		# 輸入參數值到t0
        li $v0, 5    			# 讀取數值
		syscall					# 呼叫系統
		move $t0, $v0    		# n拷貝到$t0

		# 呼叫費式數列含式
		move $a0, $t0			# 準備參數到參數傳遞暫存器
		jal fib					# 執行fib(n)，並且記錄ra


fib:	# 寫下你的費式數列含式	
		

		
		jr $ra					# 跳到$ra值的位置
