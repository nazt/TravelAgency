class BootStrap {

     def init = { servletContext ->
		new Fuel(fuel:'Gasoline').save()
		new Fuel(fuel:'Diesel').save()		
		new CarBrand(brand:'Toyota').save()
		new CarBrand(brand:'Mitsubishi Motors').save()
		new CarType(type:'Pickup').save()
		new Engine(engine:'2,000 CC').save()		
		new Engine(engine:'1,500 CC').save()				
     }
     def destroy = {
     }
} 