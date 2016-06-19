package br.com.enums;

public enum TipoProduto {	
	BEBIDA("Bebida"),
	LANCHE("Lanche"),
	PORCAO("Porção"),
	ALMOCO("Almoço"),
	BIFE_SOPAS("Bife de sopas"),
	SOBREMESA("Sobremesa"),
	SORVETE("Sorvete"),
	RODIZIO_PIZZA("Rodízio de pizza");
	
	private String nome;
	
	private TipoProduto(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return this.nome;
	}
	
}
