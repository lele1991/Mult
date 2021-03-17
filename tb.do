# ============================================================================
# Name        : tb_divisor.do
# Author      : Letícia de Oliveira Nunes
# Version     : 0.1
# Copyright   : Renan, Departamento de Eletrônica, Florianópolis, IFSC
# Description : Soma com n bits
# ============================================================================


#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivos. Ordem é importante
vcom mult.vhd 
vcom testbench.vhd

#Simula (work é o diretorio, testbench é o nome da entity)
#toplevel
vsim -t ns work.testbench 

#Mostra forma de onda
view wave

#Adiciona ondas específicas
# -radix: binary, hex, dec
# -label: nome da forma de onda
add wave -radix dec  /dataa
add wave -radix dec  /datab
add wave -radix dec  /sum
#Como mostrar sinais internos do processo


#Simula até um 100ns
run 100ns

wave zoomfull
#write wave wave.ps