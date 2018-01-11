#!/usr/bin/env python3

# In true UNIX style, all of my namespacees have a character width of 3.
# https://youtu.be/aU4pyiB-kq0

import datetime

# This MAIN functionality facilitates support for the declarative programming paradigm.
def mȧn():
	print(cvr())

# CoVeR letter
cvr = lambda: (
		'\tHello World,'
		+ '\n\tMy name\'s ' + nme()[0] + ', I\'m ' + str(age()) + ' years old, and I live at the ' + add()[0] + '; I do not have a license, but I do ride a skateboard, and I wear a sombrero to job interviews.'
		+ '\n\tI\'m nearing completion of my online degree (https://www.open.edu.au/); B.IT from RMIT, minoring in engineering mathematics from UniSA.'
		+ '\n\tI want to be a FOSS hacker, which means I do not sign non-disclosure agreements; Saint IGNUcius condemns them, and I am no $ell-out.'
		+ '\n\tI will not start until February due to precommitments involving volunteering for LCA\'18 (https://linux.conf.au/).'
		+ '\n\n\tREFERENCES:\n' + '\n'.join(''.join(sorted(
			['\n\t\t' + æch + ': ' + obj[æch] for æch in obj]
			, key=lambda xxx: ['ref','nme','pos','phn','eml','web','git','pub','vid'].index(xxx[3:6])
		)) for obj in ref())
	)

# NaME
nme = lambda: 'Shyam Nath'.split(' ')

# AGE in years
def age():
	aaa = datetime.datetime.strptime(dob(), '1%Y-%m-%d HE')
	zzz = datetime.date.today()
	yær = abs(aaa.year - zzz.year)
	return(yær - 1 if zzz.month < aaa.month or (zzz.month == aaa.month and zzz.day < aaa.day) else yær)

# Date Of Birth
def dob():
	fmt = 'YYYYY-MM-DD CC'
	yyy = 'Year'
	mmm = 'Month'
	ddd = 'Day'
	ccc = 'Calendar'
	# https://youtu.be/czgOWmtGVGs
	# https://youtu.be/4ClLMrfYmmw
	return('11989-11-06 HE')

# Electronic MaiL address
eml = lambda: 's3421215@student.rmit.edu.au'

# PHone Number
phn = lambda: '0490287217'

# dormitory ADDress
add = lambda: 'University of Canberra Village\nCooinda Hut, off Cooinda Street\nBruce ACT 2617\nCanberra, Australia'.split('\n')

# REFerences
ref = lambda: [
		{
			'ref': 'Hare Krishna Farming & Catering'
			, 'nme': 'Christopher Hawkins'
			, 'pos': 'Temple President'
			, 'phn': '(02)49981800'
			, 'eml': 'newgokula@gmail.com'
			, 'web': 'newgokula.com'
		}, {
			'ref': 'Academic Programming Project'
			, 'nme': 'Ian Peake'
			, 'pos': 'Project Sponsor'
			, 'phn': '+61-415-0457300'
			, 'eml': 'ian.peake@rmit.edu.au'
			, 'web': 'cs.rmit.edu.au/~ipeake'
			, 'git': 'git.io/vFR5r'
			, 'pub': 'arxiv.org/abs/1711.05997'
			, 'vid': 'youtu.be/om3L9AzNC-M'
		}
	]

mȧn()
