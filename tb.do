# ============================================================================
# Name        : tb_divisor.do
# Author      : Let�cia de Oliveira Nunes
# Version     : 0.1
# Copyright   : Renan, Departamento de Eletr�nica, Florian�polis, IFSC
# Description : Soma com n bits
# ============================================================================


#Cria biblioteca do projeto
vlib work

#compila projeto: todos os aquivos. Ordem � importante
vcom mult.vhd 
vcom testbench.vhd

#Simula (work � o diretorio, testbench � o nome da entity)
#toplevel
vsim -t ns work.testbench 

#Mostra forma de onda
view wave

#Adiciona ondas espec�ficas
# -radix: binary, hex, dec
# -label: nome da forma de onda
add wave -radix dec  /dataa
add wave -radix dec  /datab
add wave -radix dec  /sum
#Como mostrar sinais internos do processo


#Simula at� um 100ns
run 100ns

wave zoomfull
#write wave wave.ps