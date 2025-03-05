module priority_encoder_tb(output reg [3:0]data_in,output reg enb, input wire [1:0]data_out);

priority_encoder_rtl INITERFACE (data_in,enb,data_out);

initial
begin
 enb=1'b0;
 data_in=4'b1001;
 #10;
 enb=1'b1;
 data_in=4'b1010;
end

initial
 $monitor($time,"ns \n ENB=%0b | DATA_IN=%0b | DATA_OUT=%0b", enb,data_in,data_out);
 
endmodule

