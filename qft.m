#!/usr/bin/octave

pkg load symbolic

#sym(pi)
#sym('x_n')
#sym('x^n')

#help sym
#help syms
#help symfun

syms hbar V A_n B_n E_n p_n t x phi(x)

phi(x) = sqrt( hbar / ( 2 * V * E_n ) ) * ( A_n * exp( - i * ( E_n * t - p_n * x ) / hbar ) + B_n * exp( +i * ( E_n * t - p_n * x ) / hbar ) )

# B_n should be B_n-dagger, because it's the Hermitian conjugate.  I'm looking to see if there's a way to account for this.
