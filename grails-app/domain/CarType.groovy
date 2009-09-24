class CarType {
	String type
    static constraints = {
    }
	String toString()
	{
		return "$id - $type"
	}
}
