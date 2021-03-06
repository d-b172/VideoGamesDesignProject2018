//This script is used for animation of the player.

//This will check to see if the player is moving.
//If the player is moving it will flip the sprite in the direction of movment
if(move != 0) image_xscale = dir;


//This check whether or not the player is in the attack state.
//If the player is in the attack state its sprite will be set
// to the playerAttack sprite which has a 6 frame animation.
//If that animation is on the last frame it will change the player state
//back to the normal state and change its sprite to the normal sprite.
if(state == States.attack)
{
   if(sprite_index = spr_luke_attack1 && image_index == 7)
   {
      state = States.normal;
      combo = 0;
      sprite_index = spr_luke_idle;
   }
   
   if(sprite_index = spr_luke_attack2 && image_index == 9)
   {
      state = States.normal;
      combo = 0;
      sprite_index = spr_luke_idle;
   }
   
   if(sprite_index = spr_luke_jump_attack1 && image_index == 8)
   {
      state = States.normal;
      combo = 0;
      sprite_index = spr_luke_jump;
      stun = true
   }
   
   if(sprite_index = spr_luke_jump_attack2 && image_index == 9)
   {
      state = States.normal;
      combo = 0;
      sprite_index = spr_luke_jump;
      stun = true
   }
}

if(state == States.enemyHit)
{
   sprite_index = spr_luke_hit;
}



if(state == States.normal)
{
if(place_meeting(x, y+1, obj_wall))
{
   if(move != 0)
   {
     sprite_index = spr_luke_running
   }
   else
   {
     sprite_index = spr_luke_idle
   }

}
else
{
   sprite_index = spr_luke_jump;
}

if(vsp < 0)
{
  sprite_index = spr_luke_jump
}
}

