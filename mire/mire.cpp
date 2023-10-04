#include"ap_int.h"
#include "hls_video.h"

typedef hls::stream<ap_axiu<8,1,1,1> >	AXI_STREAM;

void mire(ap_uint<2> mode,AXI_STREAM& m_axis_video, int hsize_in, int vsize_in)
{
#pragma HLS INTERFACE axis register both port=m_axis_video

ap_axiu<8, 1, 1, 1> video;

for(int i = 0; i < vsize_in ; i ++)
	{
#pragma HLS PIPELINE
	for(int j = 0; j < hsize_in ; j ++)
		{
		if((i==0)&&(j==0))
			video.user=1;
		else
			video.user=0;

		if(j==(hsize_in-1))
			video.last = 1;
		else
			video.last = 0;

		if (mode==0){
			if ((((j/10)%2)==0) && (((i/10)%2)==0))

			video.data =255;
			else
			video.data =0;
		}
		else if (mode==1){
			video.data =j;
		}
		else if (mode==2){
			video.data =i;
		}
		else {
			video.data =255;
		}
		m_axis_video << video;
		}
	}

}
