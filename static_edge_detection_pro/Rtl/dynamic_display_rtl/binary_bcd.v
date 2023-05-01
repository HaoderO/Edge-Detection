module binary_bcd
(
	input	[7:0]	bin_in  ,
	output	[11:0]	bcd_out
);
	
reg     [3:0]   ones        ;
reg     [3:0]   tens        ;
reg     [3:0]   hundreds    ;
//reg     [3:0]   thousands   ;  
//reg     [3:0]   t_thousands ;
//reg     [3:0]   h_thousands ;
//reg     [3:0]   millions    ;
//reg     [3:0]   t_millions  ;
integer i;
 
always @(*) begin
	ones 		= 4'd0;//个位
	tens 		= 4'd0;//十位
	hundreds 	= 4'd0;//百位
	//thousands   = 4'd0;//千位
	//t_thousands = 4'd0;//万位
	//h_thousands = 4'd0;//十万位
	//millions    = 4'd0;//百万位
	//t_millions  = 4'd0;//千万位

for(i = 7; i >= 0; i = i - 1) 
    begin
    	if (ones >= 4'd5) 		    ones        = ones + 4'd3;
    	if (tens >= 4'd5) 		    tens        = tens + 4'd3;
    	if (hundreds >= 4'd5)	    hundreds    = hundreds + 4'd3;
        //if (thousands >= 4'd5)	    thousands   = thousands + 4'd3;
    	//if (t_thousands >= 4'd5)	t_thousands = t_thousands + 4'd3;
    	//if (h_thousands >= 4'd5)	h_thousands = h_thousands + 4'd3;
    	//if (millions >= 4'd5)	    millions    = millions + 4'd3;
    	//if (t_millions >= 4'd5)	    t_millions  = t_millions + 4'd3;

    	//t_millions   = {t_millions[2:0], millions[3]};
        //millions	 = {millions[2:0], h_thousands[3]};
    	//h_thousands	 = {h_thousands[2:0], t_thousands[3]};
    	//t_thousands	 = {t_thousands[2:0], thousands[3]};
    	//thousands	 = {thousands[2:0], hundreds[3]};
    	hundreds	 = {hundreds[2:0], tens[3]};
    	tens	     = {tens[2:0], ones[3]};
    	ones	     = {ones[2:0], bin_in[i]};
    end
end	

//assign bcd_out = {t_millions,millions,h_thousands,t_thousands,thousands,hundreds,tens,ones};
assign bcd_out = {hundreds,tens,ones};

endmodule