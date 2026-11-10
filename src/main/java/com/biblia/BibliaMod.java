package com.biblia;

import net.fabricmc.api.ModInitializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Punto de entrada del mod.
 *
 * La logica de la historia (capitulo actual, saltos, dialogos) vive en el datapack
 * (carpeta datapack/biblia). Este mod se encarga de lo que el datapack no puede:
 * interfaz propia, personajes animados, camara y otras mecanicas.
 *
 * Por ahora solo registra que se cargo. Las siguientes funciones se anaden aqui.
 */
public class BibliaMod implements ModInitializer {
	public static final String MOD_ID = "biblia";
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	@Override
	public void onInitialize() {
		LOGGER.info("Mod Biblia cargado.");
	}
}
