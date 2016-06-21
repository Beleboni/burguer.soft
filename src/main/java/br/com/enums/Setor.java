package br.com.enums;

import br.com.caelum.vraptor.Result;
import br.com.controller.AdministradorController;
import br.com.controller.CozinheiroController;
import br.com.controller.GarcomController;

public enum Setor {

	GARCOM {
		@Override
		public void redirecionarParaPainel(Result result) {
			result.redirectTo(GarcomController.class).painelGarcom();
		}
	},
	COZINHEIRO {
		@Override
		public void redirecionarParaPainel(Result result) {
			result.redirectTo(CozinheiroController.class).painelCozinheiro();
		}
	},
	ADMINISTRADOR {
		@Override
		public void redirecionarParaPainel(Result result) {
			result.redirectTo(AdministradorController.class).painelAdministrativo();
		}
	};
	/**
	 * Metodo abstrato para redirecionar o funcionario para seu devido painel
	 * @param result
	 */
	public abstract void redirecionarParaPainel(Result result);

}
