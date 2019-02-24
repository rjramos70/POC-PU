package br.com.pu.model;

public enum Type {
	Local, Produto, Viagem;
	
	public static Type fromString(String text) {
        for (Type b : Type.values()) {
            System.out.println(b + " :: " + text);
        	if (b.equals(text)) {
                System.out.println("return : " + b);
        		return b;
            }
        }
        return null;
    }
}
