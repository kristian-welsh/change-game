package  {
	public class Util {
		public static function randomNumBetween(minNum:Number, maxNum:Number):Number {
			return Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum;
		}
		
		public static function round(numberToRound:Number, roundedDigit:Number, roundingMethod:Function):Number {
			return roundingMethod(numberToRound / roundedDigit) * roundedDigit;
		}
	}
}