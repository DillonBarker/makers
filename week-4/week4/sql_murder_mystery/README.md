# SQL murder mystery

My notes:
- **Annabel Miller**  I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.
- **Morty Schapiro**	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".

- Following these two transcripts I have a feeling the culprit goes to the gym and has a membership number starting with 48Z and also a number plate that includes H42W

```
SELECT * FROM drivers_license WHERE plate_number LIKE '%H42W%'
```
This found:
id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model
183779	21	65	blue	blonde	female	H42W0X	Toyota	Prius
423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS
664760	21	71	black	black	male	4H42WR	Nissan	Altima

- As the description spoke about a man I can narrow it down to the bottom two results, now I need to look at the data from the gym.
```
SELECT *
FROM get_fit_now_check_in
WHERE membership_id LIKE '48Z%'
```
- From this i found these two points, which match the ID and time:
membership_id	check_in_date	check_in_time	check_out_time
48Z7A	20180109	1600	1730
48Z55	20180109	1530	1700

```
SELECT get_fit_now_check_in.membership_id, get_fit_now_member.membership_status
FROM get_fit_now_member
JOIN get_fit_now_check_in
  ON get_fit_now_check_in.membership_id = get_fit_now_member.id
WHERE membership_id = '48Z7A' OR membership_id ='48Z55'
```
- From this I found they were both gold members
and there names **Jeremy Bowers** and **Joe Germuska**

```
SELECT person.name, drivers_license.plate_number
FROM drivers_license
JOIN person
  ON drivers_license.id = person.license_id
WHERE plate_number LIKE '%H42W%'
```
- Finally I used this to find the name that matched and the killer is Jeremy Bowers
