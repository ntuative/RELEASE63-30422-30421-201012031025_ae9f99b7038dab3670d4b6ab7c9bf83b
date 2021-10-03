package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_790:BigInteger;
      
      private var var_2009:BigInteger;
      
      private var var_1492:BigInteger;
      
      private var var_2008:BigInteger;
      
      private var var_1201:BigInteger;
      
      private var var_1493:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1201 = param1;
         this.var_1493 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1201.toString() + ",generator: " + this.var_1493.toString() + ",secret: " + param1);
         this.var_790 = new BigInteger();
         this.var_790.fromRadix(param1,param2);
         this.var_2009 = this.var_1493.modPow(this.var_790,this.var_1201);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1492 = new BigInteger();
         this.var_1492.fromRadix(param1,param2);
         this.var_2008 = this.var_1492.modPow(this.var_790,this.var_1201);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2009.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2008.toRadix(param1);
      }
   }
}
