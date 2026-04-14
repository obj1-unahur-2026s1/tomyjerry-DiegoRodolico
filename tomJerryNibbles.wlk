object tom {
 var energia = 50
 //lo necesito porque va a cambiar durante los momentos
 //la velocidad se calcula y no puede ser un atributo, depende de la energia 
 method velocidadMaxima() {
    return 5 + energia / 10
 }
 method comer(unRaton) {
   energia = energia + 12 + unRaton.peso()
   //hay que delegar a un raton.peso y que la rata haga eso tom solo conoce comer
 }
 method correr(metros) {
   energia = energia - metros /2
   //cuando tom corre su energia disminueye en cantidad de mtros corridos
 }
 method energia() {
    return energia
 }
 method estaFeliz() {
   return energia > 50
 }
}

object jerry {
    var edad = 2
    
    method cumplirAños() {
      edad = edad + 1
    }
    method peso() {
     //aca va la poliformia aca el metodo peso() retorna edad * 20
     return edad * 20
    }
}

object nibbles {
    method peso(){
    //aca la poliformia el metodo peso() retorna 35, es el mismo metodo pero en distinto objeto funciona diferente
        return 35
    }
}

// Inventar otro ratón