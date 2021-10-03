package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2386:int;
      
      private var var_2387:int;
      
      private var var_2443:String;
      
      private var var_2441:int;
      
      private var var_2442:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2386 = param1;
         this.var_2387 = param2;
         this.var_2443 = param3;
         this.var_2441 = param4;
         this.var_2442 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2386,this.var_2387,this.var_2443,this.var_2441,int(this.var_2442)];
      }
      
      public function dispose() : void
      {
      }
   }
}
