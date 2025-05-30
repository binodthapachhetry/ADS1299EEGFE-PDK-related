
/*
   *** DO NOT EDIT THIS FILE ***
   This is an automatically generated file.
   Any edits you make will be lost if the file is regenerated.
   *** DO NOT EDIT THIS FILE ***
*/

/*
   Generated by usbdescgen 0.5.0a
   from test.usbconfig on Mon Nov 28 10:57:07 2005
*/

#include "usbconfig.h"

#define CONFIG_DESC_COUNT 1
#define STRING_DESC_COUNT 4
#define ONLY_LANG_ID 0x0409

#define SERIAL_NUMBER_INDEX 3

/* "Michael Ashton" */
static const usb_data_t string1[16]={
	0x001E, 0x1E03, 0x4D00, 0x6900,
	0x6300, 0x6800, 0x6100, 0x6500,
	0x6C00, 0x2000, 0x4100, 0x7300,
	0x6800, 0x7400, 0x6F00, 0x6E00
};

/* "PORUS Test" */
static const usb_data_t string2[12]={
	0x0016, 0x1603, 0x5000, 0x4F00,
	0x5200, 0x5500, 0x5300, 0x2000,
	0x5400, 0x6500, 0x7300, 0x7400
};

/* "0" */
static const usb_data_t string3[3]={
	0x0004, 0x0403, 0x3000
};

static const usb_data_t langtbl[3]={
	0x0004, 0x0303, 0x0904
};

static const usb_data_t *string_descs[4]={
	langtbl, string1, string2, string3
};

static usb_data_t *serial_number_string_ptr=(usb_data_t *)string3;

static const usb_data_t config1[17]={
	0x0020, 0x0902, 0x2000, 0x0101,
	0x00C0, 0x0009, 0x0400, 0x0002,
	0xFFFF, 0xFF00, 0x0705, 0x8102,
	0x4000, 0x0107, 0x0501, 0x0240,
	0x0001
};

static const unsigned int iface_counts[1]={
	1
};

static const unsigned int config_features[1]={
	1
};

static const usb_data_t device_desc[10]={
	0x0012, 0x1201, 0x0101, 0x0000,
	0x0040, 0xFFFF, 0x0000, 0x0000,
	0x0102, 0x0301
};

usb_endpoint_data_t epout1_data;

static const usb_endpoint_t epout1={
	1,
	USB_EPTYPE_BULK,
	64,
	&epout1_data,
	0,
	0
};

usb_endpoint_data_t epin1_data;

static const usb_endpoint_t epin1={
	17,
	USB_EPTYPE_BULK,
	64,
	&epin1_data,
	0,
	(usb_endpoint_t *)(&epout1)
};

static const usb_endpoint_t *endpoints[32]={
	0, &epout1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &epin1, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

static const usb_endpoint_t *first_endpoint=&epin1;

usb_data_t usb_ctl_write_data[16];

static int get_len(usb_data_t *bytes)
{
	return (int)(*bytes);
}

void usb_get_device_desc(usb_data_t **bytes, int *len)
{
	*bytes=(usb_data_t *)(device_desc+1);
	*len=get_len((usb_data_t *)device_desc);
}

int usb_get_config_desc(unsigned int index, usb_data_t **bytes, int *len)
{
	usb_data_t *data;

	if (index>=CONFIG_DESC_COUNT) return -1;
	data=(usb_data_t *)config1;
	*len=get_len(data);
	*bytes=data+1;
	return 0;
}

usb_endpoint_t *usb_get_ep(unsigned int config, unsigned int ep)
{
	if (!usb_have_config(config)) return 0;
	if (ep>31) return 0;
	return (usb_endpoint_t *)(endpoints[ep]);
}

usb_endpoint_t *usb_get_first_ep(unsigned int config)
{
	if (!usb_have_config(config)) return 0;
	return (usb_endpoint_t *)first_endpoint;
}

int usb_have_config(unsigned int config)
{
	if (config>CONFIG_DESC_COUNT) return 0;
	return 1;
}

int usb_config_features(unsigned int config)
{
	if (!usb_have_config(config)) return 0;
	return config_features[config-1];
}

int usb_have_iface(unsigned int config, unsigned int iface)
{
	if (!usb_have_config(config)) return 0;
	return (iface>iface_counts[config-1])?0:1;
}

int usb_get_string_desc(unsigned int index, unsigned short langid, usb_data_t **bytes, int *len)
{
	usb_data_t *data;

	if (index==SERIAL_NUMBER_INDEX) {
		data=(usb_data_t *)serial_number_string_ptr;
	} else if (!index) {
		data=(usb_data_t *)langtbl; 
	} else {
		if (index>=STRING_DESC_COUNT) return -1;
		if (langid!=ONLY_LANG_ID) return -1;
		data=(usb_data_t *)string_descs[index];
	}
	*len=get_len((usb_data_t *)data);
	*bytes=(usb_data_t *)(data+1);
	return 0;
}

void usb_set_serial_number(usb_data_t *bytes)
{
	serial_number_string_ptr=bytes;
}

