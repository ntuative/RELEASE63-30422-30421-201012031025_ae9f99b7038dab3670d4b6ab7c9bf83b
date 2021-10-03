package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_161:IHabboConfigurationManager = null;
      
      private var var_512:int = 0;
      
      private var var_425:Number = 0;
      
      private var var_2608:Array;
      
      private var var_1180:String = "";
      
      private var var_1446:String = "";
      
      private var var_1906:String = "";
      
      private var var_1904:String = "";
      
      private var var_1423:Boolean = false;
      
      private var var_1448:GarbageMonitor = null;
      
      private var var_1181:int = 0;
      
      private var var_1447:int = 1000;
      
      private var var_1182:int = 0;
      
      private var var_1450:int = 60;
      
      private var var_1449:int = 0;
      
      private var var_1445:int = 10;
      
      private var var_1183:int = 0;
      
      private var var_1973:Number = 0.15;
      
      private var var_1972:Boolean = true;
      
      private var var_1971:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2608 = [];
         super();
         this.var_1446 = Capabilities.version;
         this.var_1906 = Capabilities.os;
         this.var_1423 = Capabilities.isDebugger;
         this.var_1180 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1180 == null)
         {
            this.var_1180 = "unknown";
         }
         this.var_1448 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1449 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1446;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_425;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1447 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1450 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1445 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_161 = param1;
         this.var_1450 = int(this.var_161.getKey("performancetest.interval","60"));
         this.var_1447 = int(this.var_161.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1445 = int(this.var_161.getKey("performancetest.reportlimit","10"));
         this.var_1973 = Number(this.var_161.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_1972 = Boolean(int(this.var_161.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1448.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1448.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1181;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1447)
         {
            ++this.var_1182;
            _loc3_ = true;
         }
         else
         {
            ++this.var_512;
            if(this.var_512 <= 1)
            {
               this.var_425 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_512);
               this.var_425 = this.var_425 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1449 > this.var_1450 * 1000 && this.var_1183 < this.var_1445)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_425);
            _loc5_ = true;
            if(this.var_1972 && this.var_1183 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_1971,this.var_425);
               if(_loc6_ < this.var_1973)
               {
                  _loc5_ = false;
               }
            }
            this.var_1449 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_1971 = this.var_425;
               if(this.sendReport())
               {
                  ++this.var_1183;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1180,this.var_1446,this.var_1906,this.var_1904,this.var_1423,_loc4_,_loc3_,this.var_1181,this.var_425,this.var_1182);
            this._connection.send(_loc1_);
            this.var_1181 = 0;
            this.var_425 = 0;
            this.var_512 = 0;
            this.var_1182 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
