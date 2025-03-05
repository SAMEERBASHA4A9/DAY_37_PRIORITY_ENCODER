module priority_encoder_rtl(input [3:0] data_in,input enb,output reg [1:0] data_out);

always@(*)

begin

 if(enb)
 begin
  if(data_in[3]==1)
   data_out=2'b11;
  else if(data_in[2]==1)
   data_out=2'b10;
  else if(data_in[1]==1)
   data_out=2'b01;
  else
   data_out=2'b00;
 end
 
end

endmodule
	
