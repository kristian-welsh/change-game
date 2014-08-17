package  {
	public class Price {
		private var _price:Number;
		public function Price(price:Number) {
			_price = Math.floor(price * 100) / 100;
		}
		
		public function get pounds():int {
			return Util.round(_price, 1, Math.floor);
		}
		
		public function get pennies():Number {
			return Util.round(_price - pounds, 0.01, Math.round);
		}
		
		public function toString():String {
			if (pennies < 10)
				return "£" + pounds + ".0" + pennies
			return "£" + pounds + "." + pennies;
		}
		
		public function addPennies(number:uint):void {
			_price += (number / 100);
		}
		
		public function addPounds(number:uint):void {
			_price += number;
		}
	}
}