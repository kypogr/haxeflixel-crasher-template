
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
        var white:FlxSprite;
        var curSelected:Int = 0;
        var canInteract:Bool = true;
	
	override public function create()
	{
		super.create();
		
	}
         
	
	override public function update(elapsed:Float)
	{
		var bg:FlxSprite = new FlxSprite;
		black = new FlxSprite().makeGraphic(FlxG.width * 1.1, FlxG.height * 2, FlxColor.BLACK);
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
                add(bg);
		
		if (!FlxG.sound.music.playing)
		{
			FlxG.sound.playMusic(Paths.music('fnfmusic'));
		}
		
		var white:FlxSprite = new FlxSprite;
		white = new FlxSprite().makeGraphic(FlxG.width * 2, FlxG.height * 2, FlxColor.WHITE);
		white.screenCenter();
		white.alpha = 0;
		add(white);
                
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
