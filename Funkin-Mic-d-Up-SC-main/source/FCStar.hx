package;

import flixel.FlxSprite;

class FCStar extends FlxSprite {
  public var sprTracker:FlxSprite;
  public function new()
  {
    super();
    frames = Paths.getSparrowAtlas("Star");
    animation.addByPrefix("star","Star",24,true);
    animation.play("star",true);
    setGraphicSize(Std.int(width*4));
  }
  override function update(elapsed:Float)
  {
    super.update(elapsed);
    if (sprTracker != null)
      setPosition(sprTracker.x + sprTracker.width, sprTracker.y + sprTracker.height/2);
  }

}
