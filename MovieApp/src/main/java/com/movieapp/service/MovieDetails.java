package com.movieapp.service;

import java.util.Arrays;
import java.util.List;

public class MovieDetails {
	
	public List<String> showMovies (String language) {
		
		
		if(language.equalsIgnoreCase("English")) {
			
			return Arrays.asList("Iron Man","Captain America","Hulk","Thor","Dr Strange");
		} else if(language.equalsIgnoreCase("Hindi")) {
			
			return Arrays.asList("Swarg","Hum Sath Sath Hai","Article 370","Baaghi","Uri");
			
		} else if (language.equalsIgnoreCase("Bhojpuri")) {
			
			return Arrays.asList("Nirahua Rickshawala","Saugndh","Sanghars","Ganges of wasepur","coolie");
			
		} else{
			
			return Arrays.asList("kgf 1","kgf2","Bahubali 1","Bahubali 2","abc");
		} 
			
	}
}
