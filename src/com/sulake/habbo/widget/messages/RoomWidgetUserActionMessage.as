package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_738:String = "RWUAM_WHISPER_USER";
      
      public static const const_771:String = "RWUAM_IGNORE_USER";
      
      public static const const_594:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_526:String = "RWUAM_KICK_USER";
      
      public static const const_634:String = "RWUAM_BAN_USER";
      
      public static const const_643:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_560:String = "RWUAM_RESPECT_USER";
      
      public static const const_582:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_657:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_792:String = "RWUAM_START_TRADING";
      
      public static const const_604:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_489:String = "RWUAM_KICK_BOT";
      
      public static const const_794:String = "RWUAM_REPORT";
      
      public static const const_425:String = "RWUAM_PICKUP_PET";
      
      public static const const_1460:String = "RWUAM_TRAIN_PET";
      
      public static const const_475:String = " RWUAM_RESPECT_PET";
      
      public static const const_379:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
