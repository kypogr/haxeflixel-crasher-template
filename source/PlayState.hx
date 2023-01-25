
package;
#if sys
import sys.io.File;
import sys.io.Process;
#end
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxSprite;

class PlayState extends FlxState
{
	
        var bg:FlxSprite;
        var black:FlxSprite;
        var curSelected:Int = 0;
        var canInteract:Bool = true;
	
	override public function create()
	{
		super.create();
		
	}
         
	
	override public function update(elapsed:Float)
	{
		var bg:FlxSprite = new FlxSprite;
		bg = new FlxSprite(-80).loadGraphic(menuBG());
		bg.scrollFactor.set();
		bg.setGraphicSize(Std.int(bg.width * 1.1));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
		bg.color = 0xFFFDE871;
                add(bg);
		
		var black:FlxSprite = new FlxSprite;
		black = new FlxSprite().makeGraphic(FlxG.width * 2, FlxG.height * 2, FlxColor.BLACK);
		black.screenCenter();
		black.alpha = 0;
		add(black);
                
	}
	
	
	 override function update(elapsed:Float)

             { if (canInteract)
		{
			if (FlxG.keys.justPressed.ENTER)
			{
		         	FlxG.switchState(new CrasherState());
				FlxG.sound.play(Paths.sound('hehehawhaw'));
			}
               }

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
