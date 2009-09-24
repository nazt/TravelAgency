class CarStock {
	static belongsTo = [colour:Colour,brand:CarBrand,engine:Engine,fuel:Fuel,type:CarType]
	String model
	String carRegistration
    static constraints = {
		brand()
		model()
		colour()
		type()
		engine()
		fuel()
		carRegistration(nullable:false)		
    }
}
