//
//  STHUDDefaultHUDViewImageData.m
//  STHUD
//
//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
//  Copyright (c) 2012 Scott Talbot. All rights reserved.
//

#import "STHUDDefaultHUDViewImageData.h"


unsigned long const STHUDDefaultHUDViewSuccessImageSize = 949;
static const unsigned char STHUDDefaultHUDViewSuccessImageChars[STHUDDefaultHUDViewSuccessImageSize] = {
	0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d, 0x49, 0x48, 0x44, 0x52,
	0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x60, 0x08, 0x06, 0x00, 0x00, 0x00, 0xe2, 0x98, 0x77,
	0x38, 0x00, 0x00, 0x03, 0x7c, 0x49, 0x44, 0x41, 0x54, 0x78, 0x01, 0xed, 0xc1, 0x5d, 0xac, 0xd7,
	0x73, 0x1c, 0x00, 0xe0, 0xcf, 0x49, 0x2f, 0x6a, 0x84, 0x22, 0xd3, 0x16, 0xb6, 0xb6, 0x6e, 0x8c,
	0x0c, 0x43, 0x43, 0x25, 0x2b, 0x2f, 0x33, 0x8e, 0x32, 0xb3, 0x96, 0xa6, 0x90, 0x69, 0x2e, 0xac,
	0x0b, 0x5d, 0xd8, 0x62, 0x5a, 0x66, 0xd6, 0x45, 0x18, 0xc3, 0xdc, 0xb0, 0xcc, 0x45, 0x17, 0x6d,
	0xc6, 0x64, 0xb3, 0x35, 0x75, 0x41, 0x34, 0x19, 0x2e, 0xda, 0x9a, 0x26, 0x8d, 0xea, 0x02, 0xa1,
	0x73, 0x9c, 0xce, 0xdb, 0xe3, 0xc2, 0x05, 0x96, 0xea, 0xff, 0xf2, 0xfd, 0x9f, 0xf3, 0xfb, 0x9f,
	0xf3, 0x79, 0x9e, 0x48, 0x29, 0xa5, 0x94, 0x52, 0x4a, 0x29, 0xa5, 0x94, 0x52, 0x4a, 0x29, 0xa5,
	0xb6, 0x80, 0x89, 0x58, 0x80, 0xb5, 0x78, 0x06, 0x57, 0x46, 0x6a, 0x3d, 0x8c, 0xc7, 0xe3, 0x38,
	0xec, 0xbf, 0xba, 0x70, 0x55, 0xa4, 0xd6, 0xc1, 0x3c, 0xec, 0x77, 0x72, 0xaf, 0x44, 0x2a, 0x0f,
	0x1d, 0x78, 0x0a, 0xfd, 0x4e, 0x6d, 0x4f, 0xa4, 0xb2, 0x70, 0x1e, 0xb6, 0xa9, 0xcd, 0x81, 0x48,
	0xe5, 0x60, 0x3a, 0xbe, 0x51, 0xbb, 0xdf, 0x22, 0x95, 0x81, 0x99, 0xd8, 0xaf, 0x3e, 0xc7, 0x22,
	0x35, 0x0f, 0x57, 0xe0, 0x90, 0xfa, 0x1d, 0x8a, 0xd4, 0x1c, 0x5c, 0x8d, 0x5f, 0x34, 0xe6, 0xf3,
	0x48, 0x8d, 0xc3, 0x35, 0xf8, 0x55, 0xe3, 0xb6, 0x44, 0x6a, 0x0c, 0xae, 0xc5, 0x51, 0xcd, 0x79,
	0x24, 0x52, 0xfd, 0x70, 0x1d, 0x8e, 0x6a, 0x4e, 0x2f, 0xa6, 0x44, 0xaa, 0x0f, 0xe6, 0xe0, 0x37,
	0xcd, 0xdb, 0x12, 0xa9, 0x3e, 0xb8, 0x01, 0xbf, 0x6b, 0x5e, 0x0f, 0x66, 0x46, 0xaa, 0x1d, 0x6e,
	0xc4, 0x1f, 0xca, 0x78, 0x2e, 0x52, 0xed, 0x30, 0x17, 0xc7, 0x94, 0xb1, 0x07, 0x93, 0x22, 0xd5,
	0x06, 0xf3, 0x71, 0x4c, 0x19, 0x87, 0x31, 0x23, 0x52, 0x6d, 0x70, 0x33, 0xba, 0x94, 0xd1, 0x8d,
	0xeb, 0x23, 0xd5, 0x06, 0xb7, 0xa0, 0x5b, 0x19, 0x3d, 0x58, 0x14, 0xa9, 0x36, 0x58, 0x88, 0x6e,
	0x65, 0xf4, 0xa1, 0x33, 0x52, 0x6d, 0x70, 0x2b, 0xfe, 0x54, 0xc6, 0x00, 0x96, 0x46, 0x55, 0x61,
	0x0a, 0x16, 0xe0, 0x01, 0x3c, 0x84, 0x59, 0x31, 0x8c, 0x70, 0x3b, 0x7a, 0x94, 0xb3, 0x2a, 0xaa,
	0x08, 0x4b, 0xf0, 0x21, 0x7a, 0x9d, 0x68, 0x27, 0x26, 0xc7, 0x10, 0xc3, 0x1d, 0xe8, 0x51, 0xce,
	0x9a, 0xa8, 0x1a, 0x5c, 0x86, 0xed, 0x4e, 0xef, 0x33, 0x4c, 0x88, 0x21, 0x82, 0x3b, 0x71, 0x5c,
	0x39, 0x4f, 0x47, 0xd5, 0xe0, 0x6e, 0x74, 0xa9, 0xdd, 0x83, 0x31, 0x04, 0x70, 0x17, 0x8e, 0x2b,
	0x67, 0x63, 0x54, 0x0d, 0x1e, 0xc3, 0x80, 0xfa, 0x7c, 0x19, 0x2d, 0x86, 0x4e, 0xf4, 0x2a, 0xe7,
	0xb5, 0xa8, 0x1a, 0xdc, 0x83, 0x41, 0x8d, 0x99, 0x1d, 0x2d, 0x82, 0xc5, 0xe8, 0x55, 0xce, 0x66,
	0x8c, 0x89, 0x2a, 0xc1, 0x6c, 0x74, 0x69, 0xdc, 0x8a, 0x68, 0x01, 0xdc, 0x8b, 0x3e, 0xe5, 0x6c,
	0xc5, 0xd8, 0xa8, 0x12, 0x74, 0x60, 0x97, 0xe6, 0x6c, 0x8a, 0xc2, 0x70, 0x1f, 0xfa, 0x94, 0xf3,
	0x11, 0x26, 0x44, 0xd5, 0x60, 0xb9, 0xe6, 0x6d, 0x8f, 0x82, 0x70, 0x3f, 0xfa, 0x95, 0xb3, 0x13,
	0x93, 0xa2, 0x8a, 0xf0, 0xa5, 0xe6, 0x1d, 0x8c, 0x42, 0xb0, 0x14, 0xfd, 0xca, 0xf9, 0x02, 0x93,
	0xa3, 0x8a, 0x30, 0x53, 0x19, 0xbd, 0x18, 0x13, 0x4d, 0xc2, 0x32, 0xf4, 0x2b, 0xe7, 0x5b, 0x4c,
	0x8d, 0xaa, 0xc2, 0x2a, 0xe5, 0xcc, 0x88, 0x26, 0x60, 0x39, 0x06, 0x94, 0xb3, 0x0f, 0x17, 0x45,
	0x95, 0xe1, 0x59, 0xe5, 0xcc, 0x8d, 0x06, 0xe1, 0x41, 0x0c, 0x28, 0xe7, 0x07, 0x5c, 0x12, 0x55,
	0x87, 0x37, 0x94, 0xb3, 0x22, 0x1a, 0x80, 0x95, 0x18, 0x54, 0xce, 0x61, 0xcc, 0x8a, 0x76, 0x80,
	0xd7, 0x95, 0xf3, 0x42, 0xd4, 0x09, 0x0f, 0x63, 0x50, 0x39, 0x3f, 0xe3, 0xf2, 0x68, 0x17, 0x78,
	0x49, 0x39, 0x1f, 0x44, 0x1d, 0xf0, 0x28, 0x06, 0x95, 0xf3, 0x3b, 0xae, 0x8d, 0x76, 0x82, 0x8d,
	0xca, 0xf9, 0x29, 0x6a, 0x84, 0xd5, 0x18, 0x54, 0x4e, 0x37, 0xe6, 0x45, 0xbb, 0xc1, 0x06, 0x65,
	0x5d, 0x1c, 0xa7, 0x81, 0xb5, 0xca, 0x3a, 0x8e, 0xdb, 0xa2, 0x1d, 0x61, 0x9d, 0xb2, 0x56, 0xc6,
	0x29, 0x60, 0x83, 0xb2, 0xfa, 0xb1, 0x24, 0xda, 0x15, 0xd6, 0x2a, 0x6b, 0x5b, 0xfc, 0x0f, 0x8c,
	0xc7, 0x5b, 0xca, 0x1a, 0xc4, 0xf2, 0x68, 0x67, 0x78, 0x42, 0x79, 0x0b, 0xe3, 0x5f, 0x30, 0x0d,
	0x9f, 0x28, 0x6f, 0x75, 0xb4, 0x3b, 0x3c, 0xa6, 0xbc, 0x7d, 0x98, 0x83, 0x0e, 0x2c, 0xc6, 0x11,
	0xe5, 0x3d, 0x19, 0x23, 0x01, 0x96, 0x69, 0x9d, 0xa3, 0x5a, 0x63, 0x7d, 0x8c, 0x14, 0x58, 0xa4,
	0xbd, 0x6c, 0x8a, 0x91, 0x04, 0x57, 0x6a, 0x1f, 0x6f, 0xa2, 0x23, 0x46, 0x12, 0x4c, 0xd7, 0x1e,
	0xde, 0xc5, 0x98, 0x18, 0x69, 0x30, 0x4e, 0xf5, 0xbd, 0x87, 0x71, 0x31, 0x52, 0xe1, 0x17, 0xd5,
	0xf5, 0x31, 0xce, 0x8c, 0x91, 0x0c, 0x7b, 0x55, 0xd3, 0x0e, 0x4c, 0x8a, 0x91, 0x0e, 0x3b, 0x54,
	0xcf, 0xa7, 0x38, 0x3b, 0x46, 0x03, 0xbc, 0xa3, 0x5a, 0x76, 0xe3, 0x9c, 0x18, 0x2d, 0xb0, 0x5e,
	0x75, 0x7c, 0x85, 0x29, 0x31, 0x9a, 0x60, 0x85, 0x6a, 0xf8, 0x1a, 0x17, 0xc4, 0x68, 0x83, 0x9b,
	0x0c, 0xbf, 0x3d, 0x38, 0x3f, 0x46, 0x23, 0x4c, 0x35, 0xbc, 0x76, 0x63, 0x4a, 0x8c, 0x66, 0x38,
	0x64, 0x78, 0xec, 0xc2, 0xb9, 0x31, 0xda, 0x61, 0x9b, 0xa1, 0xb7, 0x13, 0x93, 0x23, 0x45, 0x60,
	0x9d, 0xa1, 0xf5, 0x3e, 0x26, 0x46, 0xfa, 0x1b, 0xe6, 0x1b, 0x3a, 0x9b, 0x31, 0x36, 0xd2, 0x3f,
	0x70, 0x06, 0x8e, 0x68, 0xbd, 0x17, 0xd1, 0x11, 0xe9, 0x44, 0x78, 0x48, 0xeb, 0x0c, 0x60, 0x4d,
	0xa4, 0x53, 0xc3, 0x56, 0xe5, 0x75, 0xa1, 0x33, 0xd2, 0xe9, 0x61, 0x2a, 0x0e, 0x28, 0xe7, 0x47,
	0x5c, 0x1d, 0xa9, 0x76, 0x98, 0x86, 0xed, 0x9a, 0xb7, 0x1d, 0x17, 0x46, 0xaa, 0x1f, 0xc6, 0x62,
	0xa3, 0xc6, 0x0c, 0xe2, 0x79, 0x9c, 0x11, 0xa9, 0x39, 0xe8, 0xc4, 0x77, 0x6a, 0xf7, 0x3d, 0x16,
	0x45, 0x2a, 0x07, 0xe3, 0xb0, 0x0a, 0x07, 0x9d, 0x5c, 0x1f, 0x5e, 0xc6, 0x59, 0x91, 0x5a, 0x03,
	0x13, 0xf0, 0x30, 0xde, 0xc6, 0x5e, 0x0c, 0xe2, 0x20, 0x5e, 0xc5, 0xa5, 0x91, 0x86, 0x16, 0x26,
	0x44, 0x4a, 0x29, 0xa5, 0x94, 0x52, 0x4a, 0x29, 0xa5, 0x94, 0x52, 0x4a, 0x29, 0x0d, 0x97, 0xbf,
	0x00, 0x87, 0x89, 0x03, 0x25, 0xe7, 0xbb, 0x93, 0xaa, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4e,
	0x44, 0xae, 0x42, 0x60, 0x82
};
const void * const STHUDDefaultHUDViewSuccessImageBytes = (const void *)STHUDDefaultHUDViewSuccessImageChars;


unsigned long const STHUDDefaultHUDViewFailureImageSize = 1073;
static const unsigned char STHUDDefaultHUDViewFailureImageChars[STHUDDefaultHUDViewFailureImageSize] = {
	0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d, 0x49, 0x48, 0x44, 0x52,
	0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x60, 0x08, 0x06, 0x00, 0x00, 0x00, 0xe2, 0x98, 0x77,
	0x38, 0x00, 0x00, 0x03, 0xf8, 0x49, 0x44, 0x41, 0x54, 0x78, 0x01, 0xed, 0xc1, 0x7f, 0x88, 0xde,
	0x73, 0x1c, 0x00, 0xf0, 0xf7, 0xed, 0xd0, 0xc6, 0xd8, 0x8c, 0xd9, 0xb0, 0xa6, 0x59, 0x5b, 0x0b,
	0x43, 0x23, 0x23, 0x49, 0xa8, 0x25, 0x74, 0x51, 0x2b, 0x9b, 0xda, 0xc4, 0xd2, 0x4a, 0x7e, 0xe4,
	0xc7, 0x7f, 0xf3, 0x07, 0x85, 0x3f, 0x58, 0xd4, 0xa4, 0x24, 0x12, 0xd6, 0xa6, 0xa6, 0x46, 0x2d,
	0x3f, 0xb6, 0x9a, 0x84, 0x35, 0x35, 0xc2, 0xd6, 0x64, 0x1a, 0x36, 0x6d, 0x88, 0x31, 0xed, 0xda,
	0x76, 0xbb, 0xdd, 0x5e, 0xd4, 0x5d, 0xad, 0x73, 0xdb, 0xb9, 0x7b, 0x9e, 0xcf, 0xf7, 0xb9, 0xfb,
	0x7e, 0x9f, 0xcf, 0xeb, 0x15, 0x59, 0x96, 0x65, 0x59, 0x96, 0x65, 0x59, 0x96, 0x65, 0x59, 0x96,
	0x65, 0x59, 0xd6, 0xcc, 0xd0, 0x12, 0xd9, 0xd0, 0xc0, 0x48, 0xac, 0xc1, 0x5b, 0x98, 0x10, 0x59,
	0xe3, 0x60, 0x34, 0x3e, 0x72, 0xd4, 0x5f, 0xb8, 0x3c, 0xb2, 0xe2, 0x61, 0x1c, 0x3e, 0xd7, 0xd7,
	0x4e, 0x8c, 0x8f, 0xac, 0x38, 0x98, 0x88, 0x6f, 0x1c, 0xdf, 0x23, 0x51, 0x45, 0x18, 0x8b, 0x27,
	0xb1, 0x1e, 0x97, 0xc7, 0x10, 0xc0, 0x64, 0x6c, 0xd3, 0xbf, 0x2b, 0xa2, 0x8a, 0xf0, 0xb4, 0xa3,
	0xfe, 0xc6, 0x05, 0xd1, 0x40, 0x98, 0x8e, 0x9d, 0xfe, 0xdf, 0x16, 0x4c, 0xc1, 0x09, 0x68, 0x89,
	0xb2, 0xc2, 0x02, 0x9c, 0x17, 0x3d, 0xb0, 0x5e, 0x6f, 0xdb, 0x30, 0x36, 0x1a, 0x00, 0x97, 0xe0,
	0x37, 0x83, 0xf7, 0x11, 0x5a, 0xa3, 0x6c, 0xf0, 0x98, 0x6e, 0x7b, 0x70, 0x03, 0x1e, 0x42, 0x87,
	0xbe, 0x56, 0x47, 0xc1, 0x70, 0x25, 0xfe, 0x52, 0xbb, 0x27, 0xa2, 0x4c, 0xb0, 0xd8, 0xe0, 0xdc,
	0x13, 0x05, 0xc1, 0xf5, 0x68, 0x57, 0x9f, 0x2e, 0x4c, 0x8d, 0x32, 0xc0, 0x2c, 0x1c, 0x34, 0x38,
	0xed, 0x98, 0x1e, 0x89, 0xa1, 0x0d, 0x07, 0xd5, 0x6f, 0x13, 0x5a, 0xa2, 0x0c, 0x70, 0xb7, 0xda,
	0x6c, 0x44, 0x6b, 0x24, 0x82, 0xf9, 0xe8, 0x54, 0xbf, 0x0e, 0xcc, 0x8c, 0xb2, 0xc0, 0x69, 0xd8,
	0xaf, 0x36, 0x8f, 0x46, 0x02, 0x98, 0x8b, 0x2e, 0x69, 0x2c, 0x8f, 0xb2, 0xc1, 0x0a, 0xb5, 0x39,
	0x80, 0xe9, 0x51, 0x07, 0xcc, 0x41, 0x87, 0x34, 0xd6, 0x63, 0x64, 0x94, 0x0d, 0x6e, 0x54, 0xbb,
	0x4f, 0x31, 0x22, 0x6a, 0x80, 0xab, 0xd0, 0x2e, 0x8d, 0x8d, 0x18, 0x1d, 0x65, 0x84, 0x56, 0xfc,
	0xa2, 0x76, 0x0f, 0xc4, 0x20, 0x61, 0x26, 0xfe, 0x94, 0xc6, 0xd7, 0x38, 0x3d, 0xca, 0x0c, 0x4b,
	0xd5, 0xae, 0x1d, 0x53, 0x62, 0x80, 0x30, 0x15, 0xbf, 0x48, 0x63, 0x1b, 0x26, 0x44, 0xd9, 0xe1,
	0x62, 0xf5, 0x59, 0x17, 0x03, 0x80, 0xb3, 0xf1, 0x83, 0x34, 0x76, 0x60, 0x72, 0x54, 0x05, 0xbe,
	0x52, 0x9f, 0x45, 0xd1, 0x0f, 0x8c, 0xc3, 0x66, 0x69, 0xfc, 0x8a, 0x69, 0x51, 0x25, 0x78, 0x58,
	0x7d, 0xf6, 0xe2, 0x9c, 0x38, 0x06, 0x9c, 0x82, 0x8d, 0xd2, 0xf8, 0x13, 0x17, 0x47, 0xd5, 0x60,
	0x22, 0x0e, 0xab, 0xcf, 0x9a, 0xf8, 0x0f, 0x9c, 0x84, 0x75, 0xd2, 0xd8, 0x87, 0xd9, 0x51, 0x55,
	0x78, 0x5f, 0xfd, 0xee, 0x8a, 0x1e, 0x68, 0xc5, 0xdb, 0xd2, 0x38, 0x80, 0xeb, 0xa2, 0xca, 0x30,
	0x5f, 0xfd, 0xf6, 0x62, 0x52, 0xfc, 0x0b, 0xaf, 0x4a, 0xa3, 0x13, 0xb7, 0x44, 0xd5, 0x61, 0x14,
	0xfe, 0x56, 0xbf, 0x0f, 0xb1, 0x54, 0x1a, 0x5d, 0x98, 0x17, 0xcd, 0x02, 0x2f, 0x18, 0x5e, 0x1e,
	0x88, 0x66, 0x82, 0x49, 0xe8, 0x30, 0x3c, 0xbc, 0x1c, 0xcd, 0x08, 0x2f, 0x19, 0x7a, 0x1f, 0xe3,
	0xc4, 0x68, 0x46, 0x38, 0x0f, 0x87, 0x0c, 0x9d, 0x1f, 0x31, 0x3e, 0x9a, 0x19, 0x5e, 0x31, 0x34,
	0xf6, 0x61, 0x66, 0x34, 0x3b, 0x9c, 0x8f, 0x4e, 0x8d, 0x75, 0x04, 0xb7, 0x46, 0xd6, 0x0d, 0xaf,
	0x69, 0xac, 0x25, 0x91, 0x1d, 0x85, 0x69, 0x38, 0xac, 0x31, 0x56, 0x46, 0xd6, 0x17, 0xde, 0x54,
	0xbc, 0x4d, 0x18, 0x15, 0x59, 0x5f, 0x98, 0x81, 0x2e, 0xc5, 0xd9, 0x8d, 0x73, 0x23, 0x3b, 0x3e,
	0xac, 0x54, 0x8c, 0x03, 0x98, 0x1d, 0x59, 0xff, 0x70, 0x21, 0x8e, 0x48, 0x6f, 0x41, 0x64, 0x03,
	0x83, 0xd5, 0xd2, 0xfa, 0x24, 0xb2, 0x81, 0xc1, 0x34, 0xfc, 0x21, 0xbd, 0x3b, 0x22, 0xeb, 0x1f,
	0xce, 0xc4, 0xf7, 0x8a, 0xd1, 0x8e, 0x0b, 0x22, 0x3b, 0x36, 0x8c, 0xc4, 0x06, 0xc5, 0xfa, 0x16,
	0xa3, 0x23, 0xeb, 0x0d, 0x2d, 0x58, 0xa5, 0x31, 0x56, 0x46, 0xd6, 0x1b, 0x9e, 0xd5, 0x58, 0xf7,
	0x45, 0xd6, 0x0d, 0xf7, 0x6a, 0xbc, 0x0e, 0xcc, 0x8e, 0x66, 0x87, 0x5b, 0x70, 0xd8, 0xd0, 0xd8,
	0x81, 0x33, 0xa2, 0x59, 0x61, 0x16, 0xda, 0x0d, 0xad, 0x0f, 0x30, 0x22, 0x9a, 0x0d, 0x26, 0x63,
	0xb7, 0xe1, 0xe1, 0xf1, 0x68, 0x26, 0x18, 0x83, 0x2d, 0x86, 0x8f, 0x23, 0xb8, 0x2d, 0x9a, 0x01,
	0x5a, 0xb1, 0xd6, 0xf0, 0xb3, 0x0f, 0x17, 0x45, 0xd5, 0x61, 0x99, 0xe1, 0x6b, 0x3b, 0xc6, 0x45,
	0x55, 0x61, 0xb1, 0xe1, 0x6f, 0x1d, 0x5a, 0xa3, 0x6a, 0x70, 0x1d, 0x0e, 0x49, 0xe7, 0xb0, 0xe2,
	0x3c, 0x1f, 0x55, 0x82, 0xa9, 0xd8, 0x23, 0xad, 0x07, 0xf1, 0xba, 0xe2, 0xdc, 0x19, 0x55, 0x80,
	0xd3, 0xb0, 0x55, 0x5a, 0x2b, 0xe2, 0x5f, 0x18, 0x8b, 0x5d, 0x8a, 0x71, 0x10, 0xb3, 0xa3, 0xcc,
	0xd0, 0x8a, 0xf7, 0xa4, 0xb5, 0x19, 0xa7, 0x44, 0x0f, 0xdc, 0xa4, 0x38, 0xbb, 0x70, 0x76, 0x94,
	0x15, 0x9e, 0x93, 0xd6, 0x5e, 0x4c, 0x8b, 0xff, 0xc0, 0xab, 0x8a, 0xf3, 0x4c, 0x94, 0x11, 0xee,
	0x96, 0xd6, 0x11, 0xb4, 0xc5, 0x31, 0x60, 0x0c, 0x7e, 0x56, 0x8c, 0xab, 0xa3, 0x6c, 0x30, 0x05,
	0x1d, 0xd2, 0x7a, 0x2a, 0xfa, 0x81, 0x39, 0xd2, 0xdb, 0x1a, 0x65, 0x84, 0x56, 0xec, 0x94, 0xce,
	0x87, 0x18, 0x11, 0xff, 0x03, 0x2f, 0x4b, 0xab, 0x2d, 0xca, 0x0a, 0x4b, 0xa4, 0xf1, 0x13, 0xce,
	0x88, 0x01, 0xc0, 0xa9, 0xd8, 0x2e, 0x8d, 0x65, 0x51, 0x66, 0x98, 0x80, 0x43, 0xea, 0x73, 0x00,
	0x97, 0xc5, 0x20, 0xe0, 0x52, 0xec, 0x57, 0xbb, 0xcf, 0x70, 0x73, 0x54, 0x01, 0x7e, 0x50, 0x9f,
	0x45, 0x51, 0x03, 0x2c, 0x54, 0x9b, 0x3f, 0x70, 0x56, 0x54, 0x01, 0xae, 0x51, 0x9f, 0x57, 0xa2,
	0x0e, 0x78, 0xd1, 0xe0, 0xbd, 0x11, 0x55, 0x81, 0x77, 0xd4, 0xee, 0x1b, 0x8c, 0x8a, 0x3a, 0xe0,
	0x24, 0x6c, 0x70, 0x6c, 0xfb, 0xf1, 0xbb, 0xde, 0xba, 0x30, 0x37, 0xaa, 0x02, 0x5f, 0xa8, 0x4d,
	0x3b, 0x66, 0x44, 0x02, 0x38, 0x17, 0xbf, 0xea, 0x6b, 0x1e, 0x26, 0x63, 0xa3, 0x6e, 0xed, 0x68,
	0x8b, 0x2a, 0xc1, 0xb5, 0x6a, 0xb3, 0x30, 0x12, 0xc2, 0xb5, 0xe8, 0xd4, 0xad, 0x13, 0xf7, 0x47,
	0x0f, 0xb4, 0xe0, 0x76, 0xcc, 0x8a, 0x2a, 0xc2, 0x2a, 0x83, 0xf3, 0x5a, 0x14, 0x00, 0xf3, 0xf1,
	0x16, 0xae, 0x8e, 0x66, 0x82, 0x31, 0xf8, 0xd2, 0xc0, 0x6c, 0xc5, 0xc9, 0x91, 0xa5, 0x85, 0x33,
	0xb1, 0x15, 0x6b, 0xd1, 0x86, 0xb5, 0xfa, 0xda, 0x8f, 0x8b, 0x22, 0x2b, 0x06, 0x46, 0x46, 0x0f,
	0xbc, 0xab, 0xaf, 0x45, 0x91, 0x35, 0x06, 0x5e, 0xd0, 0xdb, 0xf2, 0xc8, 0x1a, 0x07, 0x27, 0x60,
	0x9d, 0x6e, 0xdf, 0x61, 0x74, 0x64, 0x8d, 0x85, 0x31, 0xb8, 0x1e, 0x13, 0x23, 0xcb, 0xb2, 0x2c,
	0xcb, 0xb2, 0x2c, 0xcb, 0xb2, 0x2c, 0xcb, 0xb2, 0x2c, 0xcb, 0x9a, 0xd0, 0x3f, 0xf3, 0x2b, 0x84,
	0x84, 0x2d, 0x87, 0x47, 0x3b, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4e, 0x44, 0xae, 0x42, 0x60,
	0x82
};
const void * const STHUDDefaultHUDViewFailureImageBytes = (const void *)STHUDDefaultHUDViewFailureImageChars;