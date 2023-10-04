#include"ap_int.h"
#include "hls_video.h"
#include <hls_opencv.h>

typedef hls::stream<ap_axiu<8,1,1,1> >	AXI_STREAM;
void mire(ap_uint<2> mode,AXI_STREAM& , int , int );
int main (int argc, char** argv) {


	CvSize pattern_size = {640,480};
	IplImage* dst = cvCreateImage(pattern_size, IPL_DEPTH_8U, 0);
	AXI_STREAM dst_axi;

	mire(3,dst_axi,640,480);

	AXIvideo2IplImage(dst_axi, dst);
	cvSaveImage("..\\..\\..\\out.png", dst);
	cvReleaseImage(&dst);
	return 0;
}
