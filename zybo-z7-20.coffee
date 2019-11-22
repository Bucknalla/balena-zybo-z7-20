deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'zybo-z7-20'
	aliases: [ 'raspberrypi3' ]
	name: 'Zybo Z7 20'
	arch: 'armv7hf'
	state: 'released'
	isDefault: true

	imageDownloadAlerts: [
		{
			type: 'warning'
			message: 'TBH'
		}
	]

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'https://docs.resin.io/raspberrypi3/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.resin.io/raspberrypi3/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.resin.io/raspberrypi3/nodejs/getting-started/#adding-your-first-device'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'zybo-z7-20'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-warrior'
		deployArtifact: 'balena-image-zybo-z7-20.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
