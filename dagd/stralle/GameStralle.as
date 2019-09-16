package dagd.stralle {
	
	import dagd.core.Game;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class GameStralle extends Game {

		public function GameStralle() {
			creatorName = "Rocco Stralle";
			gameTitle = "Good Clicker, Yes";
		}

		private var squares: Array = new Array(); // make an empty array

		public function Game() {
			addEventListener(Event.ENTER_FRAME, gameLoop);
		}
		private function gameLoop(e: Event): void {

			spawnSquare();
			spawnCircle();
			spawnTriangle();

			for (var i: int = 0; i < squares.length; i++) {
				squares[i].update();
				if (squares[i].isDead == true) {

					removeChild(squares[i]);

					squares[i].dispose();

					squares.splice(i, 1);

				}
			}
			
			for (var i: int = 0; i < circles.length; i++) {
				circles[i].update();
				if (circles[i].isDead == true) {

					removeChild(circles[i]);

					circles[i].dispose();

					circles.splice(i, 1);

				}
			}
			
			for (var i: int = 0; i < circles.length; i++) {
				circles[i].update();
				if (circles[i].isDead == true) {

					removeChild(circles[i]);

					circles[i].dispose();

					circles.splice(i, 1);

				}
			}

		}
		private function spawnSquare(): void {
			var s = new Square();
			squares.push(s);
			addChild(s);

		}
		
		private function spawnCircle(): void {
			var c = new Circle();
			circles.push(c);
			addChild(c);

		}
		
		private function spawnTriangle(): void {
			var t = new Triangle();
			triangles.push(t);
			addChild(t);

		}

	} // ends Game class

} // ends package