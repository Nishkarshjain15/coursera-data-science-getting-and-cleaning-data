# -*- coding: utf-8 -*-
"""
Created on Thu Jun 19 00:30:37 2014

@author: goanpeca
"""
def main():
    fin = 'm.md'
    fout = 'CodeBook.md'
    create_md(fin, fout)

def create_md(fin, fout):
    """ """
    with open(fin) as f:
        data = f.read()

    new_lines = ['Codebook',
                 '===============================================',
                 'Samsung Galaxy S Tidy Data Subset',
                 '-----------------------------------']
    lines = data.split('\n')

    while '' in lines:
        lines.remove('')

    for i, line in enumerate(lines[1:]):
        index = i + 1
        l1 = line.replace('"', '')
        l1 = '**{0}. '.format(index) + l1 + '**'

        # Define domain
        if 'Time' in line:
            domain = 'Time'
        elif 'Frequency':
            domain = 'Frequency'

        # Define variable
        if 'BodyAccJerk':
            var = 'Body Linear Jerk'
        elif 'BodyGyroJerk':
            var = 'Body Angular Jerk'
        elif 'BodyAcc' in line:
            var = 'Body Linear Acceleration'
        elif 'BodyGyro.':
            var = 'Body Angular Velocity'
        elif 'GravityAccJerk':
            var = 'Gravity Linear Jerk'
        elif 'GravityGyroJerk':
            var = 'Gravity Angular Jerk'
        elif 'GravityAcc' in line:
            var = 'Gravity Linear Acceleration'
        elif 'GravityGyro' in line:
            var = 'Gravity Angular Acceleration'

        # Define statistic
        if '.std' in line:
            stat = 'Standard Deviation'
        elif '.Mean' in line:
            stat = 'Mean'
        else:
            stat = ''

        # Define direction
        if '.X' in line:
            direc = 'in the *X* direction'
        elif '.Y' in line:
            direc = 'in the *Y* direction'
        elif '.Z' in line:
            direc = 'in the *Z* direction'
        else:
            direc = '*Magnitude*'

        dic = {'domain': domain,
               'stat': stat,
               'direction': direc,
               'variable': var}

        if 'Subject' in line:
            l2 = '  + ' + 'Subjects that perform a set of activities'
            l3 = '      [1,30] . Integer values representing a person.'
        elif 'Activity' in line:
            l2 = '  + ' + 'Activities performed by the test and train subjects'
            l3 = '      [LAYING, SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS]. String values representing activities.'
        elif direc == '*Magnitude*':
            l2 = '  + ' + 'Average value for the measurements of the *Magnitude* of the *{stat}* of the *{variable}* in the *{domain}* domain for a given *Subject* doing a specific *Activity*'.format(**dic)
            l3 = '      [-1.0,1.0] . Normalized floating point values.'
        else:
            l2 = '  + ' + 'Average value for the measurements of the *{stat}* of the *{variable}* {direction} in the *{domain}* domain for a given *Subject* doing a specific *Activity*'.format(**dic)
            l3 = '      [-1.0,1.0] . Normalized floating point values.'

        new_lines.append(l1)
        new_lines.append(l2)
        new_lines.append('\n')
        new_lines.append(l3)
        new_lines.append('\n\n')

    with open(fout, 'w') as f:
        f.write('\n'.join(new_lines))

if __name__ == '__main__':
    main()
