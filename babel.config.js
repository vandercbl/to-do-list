module.exports = {
	presets: [
		[
			'@babek/preset-env',
			{
				targets: {
					node: 'current'
				}
			}			
		],
		'@babel/preset-typescript'
	],
	ignore: [
		'**/*.spec.ts'
	]	
}