-- Generated from Saints_N_Sinners_International_Booking_Pilot.xlsx
-- Source sheet: Festival Pipeline, rows 6-170
-- Import batch: pilot-2026-09-19

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Horns Up Festival', 'Independent indoor underground metal festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Horns Up Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'BASIN / Obscure Promotion ecosystem', 'open-air metal festival'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'BASIN / Obscure Promotion ecosystem'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Pragokoncert Bohemia a.s.', 'international rock/metal open air'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Pragokoncert Bohemia a.s.'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Chania Rock Festival team', 'Independent city open-air festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Chania Rock Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Golden R. Festival', 'Independent seaside open-air metal festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Golden R. Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock la Mureș team', 'independent riverside camping festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock la Mureș team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Green Rock Fest Association with Ruse Municipality', 'municipal/association open-air festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Green Rock Fest Association with Ruse Municipality'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'VAZ-Schladnitz / Hannes Kaufmann and Oliver Seebacher', 'castle-setting heavy metal open air plus band contest'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'VAZ-Schladnitz / Hannes Kaufmann and Oliver Seebacher'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Sevlievo Municipality', 'municipal open-air festival at medieval fortress'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Sevlievo Municipality'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock Fest-Chirpan nonprofit association with Chirpan Municipality', 'municipal/nonprofit open-air festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock Fest-Chirpan nonprofit association with Chirpan Municipality'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rethymno Rocks! Festival team', 'Independent castle open-air festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rethymno Rocks! Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock pod Kamenom team', 'regional rock/metal open air'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock pod Kamenom team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Eat Metal Records', 'Independent indoor underground metal festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Eat Metal Records'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'TÁBOR Fesztivál', 'independent camping rock festival; successor to Zorall Sörolimpia'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'TÁBOR Fesztivál'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Midalidare Estate', 'international destination rock festival (stretch)'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Midalidare Estate'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock Hard Greece', 'Indoor magazine-branded metal festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock Hard Greece'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Stowarzyszenie Ostrowskie Progi', 'independent two-stage progressive/metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Stowarzyszenie Ostrowskie Progi'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'PolineROOOCK team with Plovdiv Municipality support', 'independent festival supported by municipality'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'PolineROOOCK team with Plovdiv Municipality support'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Metal Union Agrinio', 'Independent city metal festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Metal Union Agrinio'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'More Than Fest team', 'rock/metal open air'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'More Than Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'DBE team', 'independent dark/experimental open-air festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'DBE team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Release Athens', 'Major multi-day commercial city festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Release Athens'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Nova Music Entertainment / Barracuda Music', 'major international rock/metal festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Nova Music Entertainment / Barracuda Music'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Vienna Metal Meeting', 'indoor multi-band metal festival/meeting'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Vienna Metal Meeting'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rockstadt Extreme Fest team', 'major international metal festival (stretch)'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rockstadt Extreme Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Terchova cultural/municipal partners and festival team', 'municipal/regional rock festival'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Terchova cultural/municipal partners and festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Mountain Brothers MCC', 'motorcycle-club rock festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Mountain Brothers MCC'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Euro Bike Fest team', 'motorcycle rally with live rock programme'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Euro Bike Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Kamenite Cas Rock Fest team', 'village rock/metal open air'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Kamenite Cas Rock Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Symbolic festival team', 'independent metal open air'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Symbolic festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Asociația Gugulan Rock', 'independent/local open-air metal festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Asociația Gugulan Rock'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'High Priority Promotions', 'Major commercial city rock festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'High Priority Promotions'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rockmaraton / Rock1', 'multi-stage open-air metal festival'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rockmaraton / Rock1'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Didi Music / Rockwave Festival', 'Regional open-air sister festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Didi Music / Rockwave Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Asociația Rock Culture with local public partners', 'municipal/association rock festival with band competition'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Asociația Rock Culture with local public partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'WTF Way Too Far Rock Festival team', 'independent international open-air festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'WTF Way Too Far Rock Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Fekete Zaj', 'independent forest/camping alternative music festival'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Fekete Zaj'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local event team with Galați public partners', 'municipal riverside rock festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local event team with Galați public partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Harley-Davidson Europe and regional partners', 'major Harley-Davidson motorcycle rally with multiple live-music stages'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Harley-Davidson Europe and regional partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock im Dorf cultural association', 'nonprofit rural open-air festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock im Dorf cultural association'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Jasmina event team/local partners', 'craft-beer and rock festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Jasmina event team/local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'EJEKT Festival', 'Major commercial city festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'EJEKT Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Up the Hammers / Manolis Karazeris team', 'Independent indoor international metal festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Up the Hammers / Manolis Karazeris team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Városi Könyvtár és Közösségi Ház / ROXIGET', 'municipal/community-house talent contest and one-day mini-festival'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Városi Könyvtár és Közösségi Ház / ROXIGET'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'FEZEN', 'multi-day city festival with major rock/metal programming'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'FEZEN'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock of Sadska team', 'small-town rock open air'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock of Sadska team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Požega cultural/tourism partners; Moto Asocijacija Srbije participated in 2026', 'Municipal square rock festival with motorcycle gathering'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Požega cultural/tourism partners; Moto Asocijacija Srbije participated in 2026'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'picture on kulturverein', 'nonprofit village open-air festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'picture on kulturverein'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Prestěnice Music Festival', 'rural multi-genre rock festival'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Prestěnice Music Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'ARTmania Events', 'international urban rock/metal festival (stretch)'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'ARTmania Events'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'MC Dunavski Bratya', 'motorcycle-club rally with live rock'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'MC Dunavski Bratya'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Municipality of Kavadarci', 'Municipal grape-harvest festival with public rock/pop concerts'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Municipality of Kavadarci'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Bikers for Humanity Romania / Live Music Summer Camp Brezoi', 'humanitarian biker rock festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Bikers for Humanity Romania / Live Music Summer Camp Brezoi'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'City of Zaječar / Gitarijada', 'Municipal open-air festival and demo-band competition'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'City of Zaječar / Gitarijada'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Password Production', 'Winter indoor multi-genre festival and off-event series'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Password Production'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'UG Fabrika / Rokerijada', 'Independent rock and urban-culture festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'UG Fabrika / Rokerijada'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Japara Mega Rock / Valentin Bojinov', 'private camping metal festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Japara Mega Rock / Valentin Bojinov'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock Club KEV with Narodno Chitalishte Popovo', 'local club/community-centre open-air concert series'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock Club KEV with Narodno Chitalishte Popovo'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Horkyze Slize / festival team', 'band-curated town rock festival'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Horkyze Slize / festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Kaloyanova Fortress / Fest Bulgaria partners', 'private open-air festival at Kaloyanova Fortress'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Kaloyanova Fortress / Fest Bulgaria partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Angelus Fest team', 'club/urban metal festival'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Angelus Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Svet Motocyklov rally team', 'motorcycle rally with major live-music programme'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Svet Motocyklov rally team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Tanec Slnka team', 'motorcycle festival and rock concerts'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Tanec Slnka team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'River Party Reboot', 'Riverside camping multi-genre festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'River Party Reboot'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Harley-Davidson Budapest / Open Road', 'motorcycle gathering with live rock programme'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Harley-Davidson Budapest / Open Road'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Moto Klub Bears Macedonia / Bears Kumanovo', 'Motorcycle club open-air rock festival'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Moto Klub Bears Macedonia / Bears Kumanovo'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Ustrzycki Festiwal Rockowy / local partners', 'municipal/town rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Ustrzycki Festiwal Rockowy / local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Bucovina Motorfest/local motorcycle organizers', 'motorcycle festival with rock/metal concerts'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Bucovina Motorfest/local motorcycle organizers'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Maris Fest/motorcycle community organizers', 'motorcycle festival with live rock concerts'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Maris Fest/motorcycle community organizers'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Arsenal Fest', 'Multi-stage urban music festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Arsenal Fest'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Blokstok Festival team', 'Free urban park rock festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Blokstok Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Festival Srpskog Podzemlja with SKC Novi Sad / Fabrika', 'Indoor underground metal festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Festival Srpskog Podzemlja with SKC Novi Sad / Fabrika'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Metal Escalation', 'indoor independent metal festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Metal Escalation'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Ardas Festival with Municipality of Orestiada and local partners', 'Municipal/border-region riverside multi-genre festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Ardas Festival with Municipality of Orestiada and local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local/private organizer', 'town rock festival'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local/private organizer'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Iron Road for Children association', 'free charity bike, Vespa and US-car festival with rock/metal competition stage'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Iron Road for Children association'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Motonalet team/local motorcycle community', 'motorcycle meeting and rock concerts'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Motonalet team/local motorcycle community'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Ziria Music Festival team', 'Free independent mountain/camping festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Ziria Music Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Tuchów cultural/municipal partners', 'municipal motorcycle rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Tuchów cultural/municipal partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Motorcycle Federation of Greece / host clubs', 'National motorcycle gathering with variable live-music programme'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Motorcycle Federation of Greece / host clubs'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Podlaski Instytut Kultury w Białymstoku – Dział Spodki', 'regional rock-band competition/showcase'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Podlaski Instytut Kultury w Białymstoku – Dział Spodki'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Independent promoter', 'club/indoor mini-festival'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Independent promoter'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Strumica Open Festival / Municipality of Strumica partners', 'Municipal summer city festival with concerts'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Strumica Open Festival / Municipality of Strumica partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Udruženje građana Contra Margum with local cultural partners', 'Community/charity rock festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Udruženje građana Contra Margum with local cultural partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock Village association/local community', 'Village open-air independent festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock Village association/local community'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Max Horse Base', 'private horse-base rock festival/concert'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Max Horse Base'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Manzul Rock Fest team', 'small independent local open-air festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Manzul Rock Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Mindya Rock Fest community team', 'village community rock/blues festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Mindya Rock Fest community team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Stilo Rally team', 'multi-day motorcycle rally with rock concerts'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Stilo Rally team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Flesh Party team', 'underground extreme-metal open air'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Flesh Party team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Gothoom Productions', 'underground extreme-metal open air'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Gothoom Productions'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'KV Oberes Mürztal', 'mountain extreme-metal open air'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'KV Oberes Mürztal'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Metal Force HMC', 'independent underground camping festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Metal Force HMC'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Odyssea Festival team', 'independent metal festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Odyssea Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'MetalGate', 'campground metal open air'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'MetalGate'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Metal Gates Festival team / Quantic Club partners', 'indoor club metal festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Metal Gates Festival team / Quantic Club partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rockowisko Zwierzyniec / local municipal partners', 'municipal park metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rockowisko Zwierzyniec / local municipal partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Free Tree Open Air cultural association', 'nonprofit youth/cultural open air'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Free Tree Open Air cultural association'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Szene Lustenau', 'youth-cultural open-air festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Szene Lustenau'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Berkovitsa Municipality', 'municipal rock weekend'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Berkovitsa Municipality'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Miejski Dom Kultury w Mławie', 'municipal rock-band competition'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Miejski Dom Kultury w Mławie'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'RTS Bunt / Radio Television of Serbia', 'National TV competition for young/unestablished original bands'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'RTS Bunt / Radio Television of Serbia'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Municipality of Prilep / event production partners', 'Municipal beer festival with large free concert programme'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Municipality of Prilep / event production partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'local Kopalino Moto Rock team/municipal partners', 'coastal motorcycle/vehicle rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'local Kopalino Moto Rock team/municipal partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Municipal cultural organization / local promoter', 'municipal metal night'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Municipal cultural organization / local promoter'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Lowland Fest', 'independent underground metal open air'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Lowland Fest'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Ukk & Roll community organizers', 'village rock/metal camping festival'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Ukk & Roll community organizers'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local organizers/municipal partners', 'small municipal/local rock festival'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local organizers/municipal partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local promoter', 'winter indoor rock mini-festival/ball'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local promoter'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local/private organizer', 'small regional rock festival'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local/private organizer'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rakitovo Municipality/local partners', 'municipal beer/music festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rakitovo Municipality/local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'not publicly verified', 'small-town rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'not publicly verified'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rock am Palast / Fort Prusy', 'independent fortress open-air festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rock am Palast / Fort Prusy'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Zelesafest team', 'small independent rock/metal festival'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Zelesafest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Total War Fest / local promoters', 'indoor underground metal mini-festival'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Total War Fest / local promoters'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Aggressive Music Fest team', 'underground metal open air'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Aggressive Music Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'MKC Skopje (Youth Cultural Center)', 'Youth Cultural Center alternative music festival'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'MKC Skopje (Youth Cultural Center)'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Stowarzyszenie Moto ND', 'motorcycle association picnic with hard-rock concerts'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Stowarzyszenie Moto ND'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Wolf Fest Chelopech team/local partners', 'local rock/metal festival and band competition'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Wolf Fest Chelopech team/local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Schooligans / Schoolwave', 'Youth/school-band festival and showcase'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Schooligans / Schoolwave'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Paletstock Festiwal', 'free DIY rural pallet-stage festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Paletstock Festiwal'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'MOK Olsztyn and Sun Dies Festival', 'municipal amphitheatre metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'MOK Olsztyn and Sun Dies Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Youth House Vratsa', 'youth-house winter rock festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Youth House Vratsa'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Tutrakan Municipality and municipal extracurricular centre', 'municipal children/youth rock competition'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Tutrakan Municipality and municipal extracurricular centre'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'DobrzaNOW festival team', 'free DIY farm/camping festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'DobrzaNOW festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Wacken Metal Battle Slovakia national organizer', 'club competition/showcase'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Wacken Metal Battle Slovakia national organizer'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Napalm Events / Napalm Records', 'castle-hill metal festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Napalm Events / Napalm Records'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Los Almiros Festival / local volunteer team', 'Free independent forest/camping rock festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Los Almiros Festival / local volunteer team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Historically Kavarna Municipality and Loud Concerts', 'former municipal international rock festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Historically Kavarna Municipality and Loud Concerts'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Former Topfest organization; current rights/contact unclear', 'rock festival'
FROM countries
WHERE countries.name = 'Slovakia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Former Topfest organization; current rights/contact unclear'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Independent traditional-metal promoters', 'Indoor underground heavy-metal mini-festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Independent traditional-metal promoters'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Lake on Fire Festival / Stoner Rock Austria', 'lakeside stoner/psychedelic rock festival'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Lake on Fire Festival / Stoner Rock Austria'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Historic independent promoter at Kyttaro', 'Indoor traditional-metal mini-festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Historic independent promoter at Kyttaro'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Saristra Festival team', 'Independent island/village alternative festival'
FROM countries
WHERE countries.name = 'Greece'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Saristra Festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Password Production / Skopje Beer Fest brand', 'Beer festival with live rock/pop programme'
FROM countries
WHERE countries.name = 'North Macedonia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Password Production / Skopje Beer Fest brand'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'RockBalaton', 'Balaton-area open-air rock festival'
FROM countries
WHERE countries.name = 'Hungary'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'RockBalaton'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Top T/local cultural partners', 'historic local rock festival'
FROM countries
WHERE countries.name = 'Romania'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Top T/local cultural partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'MC Rocker', 'Motorcycle rally with rock concerts'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'MC Rocker'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Moto Kamp Panter Apatin', 'Motorcycle rally with live rock'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Moto Kamp Panter Apatin'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Niech Cisza Milczy festival team', 'free open-air metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Niech Cisza Milczy festival team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local motorcycle organizers in Rumenka', 'Local motorcycle rally with multiple rock bands'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local motorcycle organizers in Rumenka'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'local festival team/municipal partners; exact entity not verified', 'free municipal square metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'local festival team/municipal partners; exact entity not verified'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Materiafest team', 'two-day independent metal festival with band contest'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Materiafest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Sea of Black team/local partners', 'free extreme-metal open-air festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Sea of Black team/local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local/municipal partners', 'municipal/local rock festival'
FROM countries
WHERE countries.name = 'Bulgaria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local/municipal partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Pavlović Ranch / independent organisers', 'Guerrilla-style independent ranch rock festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Pavlović Ranch / independent organisers'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Local Rock Garden/SKC and moto organizers', 'Rock mini-festival combined with motorcycle gathering'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Local Rock Garden/SKC and moto organizers'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Ciosaniec Festiwal team', 'rural camping rock/metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Ciosaniec Festiwal team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Chapter Pirot motorcycle community', 'Mountain motorcycle gathering with rock programme'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Chapter Pirot motorcycle community'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Sick Midsummer Festival', 'extreme-metal open air'
FROM countries
WHERE countries.name = 'Austria'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Sick Midsummer Festival'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Cieszanów Rock Festiwal / municipal and production partners', 'town rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Cieszanów Rock Festiwal / municipal and production partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Rozłupnia Fest / Zagroda na Zadupiu', 'DIY rural one-day metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Rozłupnia Fest / Zagroda na Zadupiu'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Hell in the Shell team / local amphitheatre partners', 'one-day amphitheatre metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Hell in the Shell team / local amphitheatre partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Trve Metal Camp team', 'micro camping metal gathering'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Trve Metal Camp team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Nature Rock Fest team', 'free rural open-air metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Nature Rock Fest team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'local Żmigród festival team; exact legal entity not verified', 'small-town palace-park rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'local Żmigród festival team; exact legal entity not verified'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'South of Heaven team', 'village underground metal festival'
FROM countries
WHERE countries.name = 'Czechia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'South of Heaven team'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, '666 United Metal Fest / Pałac w Łęce Wielkiej', 'one-day palace-ground metal festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = '666 United Metal Fest / Pałac w Łęce Wielkiej'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'uROCK Młodych local partners', 'municipal youth rock festival'
FROM countries
WHERE countries.name = 'Poland'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'uROCK Młodych local partners'
  );

INSERT INTO organizers (country_id, name, organizer_type)
SELECT countries.id, 'Hellhammer Klub / local promoter', 'Independent open-air extreme-metal festival'
FROM countries
WHERE countries.name = 'Serbia'
  AND NOT EXISTS (
    SELECT 1 FROM organizers
    WHERE organizers.country_id = countries.id
      AND organizers.name = 'Hellhammer Klub / local promoter'
  );

-- SNS-001: Horns Up Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Horns Up Festival' ORDER BY id LIMIT 1),
  'Horns Up Festival',
  'Trikala',
  'traditional heavy metal, power metal, doom metal, thrash metal, underground metal',
  'small-medium',
  'https://hornsupfestival.com/',
  'https://www.instagram.com/horns.up.festival/',
  'https://www.facebook.com/hornsupfestival/',
  'https://hornsupfestival.com/',
  'A-priority and one of the best stylistic matches. International underground traditional/power-metal audience; realistic if routed with Athens or Thessaloniki.',
  'SNS-001',
  'Independent indoor underground metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Confirmed',
  '26-27 February 2027 announced (12th edition)', 'Contact immediately for 2027 late additions or 2028; line-up work starts many months ahead.', NULL
FROM festivals WHERE external_id = 'SNS-001';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 89,
  25, 15, 12.6,
  12, 6.4, 8.6,
  9, NULL, 'High',
  'Verified', 'Extensive for its size',
  'Titan Force, Heir Apparent, Tytan, Iron Void, Alien Force, Glacier', 'A-priority and one of the best stylistic matches. International underground traditional/power-metal audience; realistic if routed with Athens or Thessaloniki.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 6,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-001';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hornsupfestival.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-001';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/horns.up.festival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-001';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Horns Up Festival', 'Festival booking contact',
  'horns.up.festival@hotmail.com', NULL, 'https://www.instagram.com/horns.up.festival/',
  'https://www.facebook.com/hornsupfestival/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-001'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct booking pitch by email with concise EPK, live video, fee and travel party; no public form.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-001'
  AND festival_editions.edition_year = 2027;

-- SNS-002: Basinfirefest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'BASIN / Obscure Promotion ecosystem' ORDER BY id LIMIT 1),
  'Basinfirefest',
  'Spalene Porici',
  'heavy metal, hard rock, thrash, death metal, alternative metal',
  'medium',
  'https://basin.cz/cs',
  'https://www.instagram.com/basinfirefest/',
  'https://www.facebook.com/BasinfirefestOfficial/',
  'https://basin.cz/cs',
  'A-priority. Strong stylistic fit and realistic international support slot, though more aggressive than the band''s core sound.',
  'SNS-002',
  'open-air metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Confirmed; 2027 passes already on sale',
  '25-28 June 2026', 'Approach September-November for following June', NULL
FROM festivals WHERE external_id = 'SNS-002';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 86,
  21, 15, 12.6,
  15, 6.4, 6.8,
  9, NULL, 'High',
  'Verified', 'Extensive',
  'Apocalyptica, Paradise Lost, Suicidal Angels, Napalm Death, Death To All', 'A-priority. Strong stylistic fit and realistic international support slot, though more aggressive than the band''s core sound.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 7,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-002';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://basin.cz/cs', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-002';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/BasinfirefestOfficial/posts/1685692136891921/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-002';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'BASIN / Obscure Promotion ecosystem', 'Festival booking contact',
  'info@basin.cz', '+420 774 744 639', 'https://www.instagram.com/basinfirefest/',
  'https://www.facebook.com/BasinfirefestOfficial/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-002'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct booking pitch by email; no public artist application form found', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-002'
  AND festival_editions.edition_year = 2027;

-- SNS-003: Masters of Rock
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Pragokoncert Bohemia a.s.' ORDER BY id LIMIT 1),
  'Masters of Rock',
  'Vizovice',
  'heavy metal, power metal, hard rock, symphonic metal',
  'large',
  'https://www.mastersofrock.cz/',
  'https://www.instagram.com/mastersofrock.cz/',
  'https://www.facebook.com/mastersofrock.cz/',
  'https://www.mastersofrock.cz/',
  'Stretch target, not a small festival. Career value is high; pitch as early-day international support.',
  'SNS-003',
  'international rock/metal open air',
  'large'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; 2027 edition expected',
  '16-19 July 2026', 'August-October', NULL
FROM festivals WHERE external_id = 'SNS-003';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 86,
  25, 15, 12,
  9, 8, 6.8,
  10, NULL, 'High',
  'Verified', 'Extensive',
  NULL, 'Stretch target, not a small festival. Career value is high; pitch as early-day international support.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 8,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-003';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.mastersofrock.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-003';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockcastle.cz/en/kontakt', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-003';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Pragokoncert Bohemia a.s.', 'Festival booking contact',
  NULL, '+420 777 701 591', 'https://www.instagram.com/mastersofrock.cz/',
  'https://www.facebook.com/mastersofrock.cz/', 'phone', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-003'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Agency-curated; send concise international support proposal to Pragokoncert band booking', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-003'
  AND festival_editions.edition_year = 2027;

-- SNS-004: Chania Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Chania Rock Festival team' ORDER BY id LIMIT 1),
  'Chania Rock Festival',
  'Chania, Crete',
  'hard rock, heavy metal, thrash metal, classic metal',
  'medium',
  'https://www.chaniarockfestival.gr/',
  'https://www.instagram.com/chaniarockfestival/',
  'https://www.facebook.com/chaniarockfestival/',
  'https://www.chaniarockfestival.gr/',
  'A-priority. Very strong melodic/classic heavy-metal fit and a proven record of international bookings. Competition/opening opportunities have existed, but direct curated booking is the safer route for an established band.',
  'SNS-004',
  'Independent city open-air festival',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; 2027 dates not publicly confirmed at verification date',
  '31 July-1 August 2026', 'September-November for the following summer is recommended; festival programming appears curated.', NULL
FROM festivals WHERE external_id = 'SNS-004';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 86,
  25, 15, 12.6,
  9, 7.2, 8.6,
  9, NULL, 'Medium',
  'Verified', 'Extensive',
  'Destruction, Geoff Tate, U.D.O., W.A.S.P., Bonfire, Blaze Bayley, Tarja Turunen', 'A-priority. Very strong melodic/classic heavy-metal fit and a proven record of international bookings. Competition/opening opportunities have existed, but direct curated booking is the safer route for an established band.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 9,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-004';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.chaniarockfestival.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-004';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.chaniarockfestival.gr/en/tickets', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-004';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Chania Rock Festival team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/chaniarockfestival/',
  'https://www.facebook.com/chaniarockfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-004'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'No public artist application form found; send a tailored EPK by official social DM and ask for the booking/programming contact.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-004'
  AND festival_editions.edition_year = 2027;

-- SNS-005: Golden R. Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Golden R. Festival' ORDER BY id LIMIT 1),
  'Golden R. Festival',
  'Nea Anchialos / Volos',
  'heavy metal, power metal, hard rock, thrash metal, extreme metal',
  'medium',
  'https://goldenrfestival.com/',
  'https://www.instagram.com/goldenrfestival_official/',
  'https://www.facebook.com/goldenrfestival/',
  'https://goldenrfestival.com/',
  'A-priority. Strong classic/melodic-metal fit and international history; Volos also routes efficiently between Athens, Trikala and Thessaloniki.',
  'SNS-005',
  'Independent seaside open-air metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Confirmed',
  '3-5 July 2026; 2-4 July 2027 announced', '2027 is already on sale and likely substantially booked; contact now for support/late slot or target 2028 from July-October 2027.', NULL
FROM festivals WHERE external_id = 'SNS-005';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 86,
  25, 15, 12.6,
  9, 6.4, 8.6,
  9, NULL, 'Medium',
  'Verified', 'Extensive',
  'Bai Bang, Septicflesh, Domine, Deus Dethroned, InnerWish, Flames', 'A-priority. Strong classic/melodic-metal fit and international history; Volos also routes efficiently between Athens, Trikala and Thessaloniki.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 10,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-005';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://goldenrfestival.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-005';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/goldenrfestival_official/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-005';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Golden R. Festival', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/goldenrfestival_official/',
  'https://www.facebook.com/goldenrfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-005'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated line-up; contact by official social DM or the website contact/shop channel and request booking staff. Provide a routed all-in quote.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-005'
  AND festival_editions.edition_year = 2027;

-- SNS-006: Rock la Mureș
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock la Mureș team' ORDER BY id LIMIT 1),
  'Rock la Mureș',
  'Periam',
  'rock, metal, alternative, electronic',
  'medium',
  'https://www.rocklamures.ro/',
  'https://www.instagram.com/rocklamures/',
  'https://www.facebook.com/rocklamures/',
  'https://www.rocklamures.ro/',
  'A/B priority. Internationally connected and actionable, though its programming is broader and more alternative than pure melodic metal.',
  'SNS-006',
  'independent riverside camping festival',
  'medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '10-11 July 2026 (14th edition)', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-006';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 86,
  25, 12, 12.6,
  13.5, 6.4, 9,
  7.6, NULL, 'High',
  'Verified', 'yes',
  'Ductape', 'A/B priority. Internationally connected and actionable, though its programming is broader and more alternative than pure melodic metal.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 11,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-006';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rocklamures.ro/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-006';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rock-alliance.eu/professional/region/romania-moldova/rock-la-mures', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-006';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock la Mureș team', 'Festival booking contact',
  'contact@rocklamures.ro', '+40 726 131 516', 'https://www.instagram.com/rocklamures/',
  'https://www.facebook.com/rocklamures/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-006'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct EPK by email, then polite social follow-up; no public band form found.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-006'
  AND festival_editions.edition_year = 2027;

-- SNS-007: Green Rock Fest Ruse
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Green Rock Fest Association with Ruse Municipality' ORDER BY id LIMIT 1),
  'Green Rock Fest Ruse',
  'Ruse',
  'rock, hard rock, heavy metal',
  'small-medium',
  'https://www.greenrockfestruse.com/en/',
  NULL,
  'https://www.facebook.com/grfruse/',
  'https://www.greenrockfestruse.com/en/',
  'A-priority. Strong melodic/classic heavy-metal fit and a realistic municipal/association target.',
  'SNS-007',
  'municipal/association open-air festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '12-13 September 2026 (18th edition)', 'September-November for the following September edition', NULL
FROM festivals WHERE external_id = 'SNS-007';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 85,
  21, 12, 12.6,
  15, 7.2, 10,
  7.6, NULL, 'High',
  'Verified', 'yes',
  'Mats Leven, Tsena Koev', 'A-priority. Strong melodic/classic heavy-metal fit and a realistic municipal/association target.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 12,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-007';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.greenrockfestruse.com/en/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-007';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://obshtinaruse.bg/en/green-rock-fest-ruse-celebrates-18-years-with-a-concert-by-mats-leven-and-tsena-koev', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-007';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Green Rock Fest Association with Ruse Municipality', 'Festival booking contact',
  'greenrockfest@abv.bg', '+359 889 557 179', NULL,
  'https://www.facebook.com/grfruse/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-007'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct EPK by email; no public application form found. Ask for an international support/guest slot.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-007'
  AND festival_editions.edition_year = 2027;

-- SNS-008: Area 53 Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'VAZ-Schladnitz / Hannes Kaufmann and Oliver Seebacher' ORDER BY id LIMIT 1),
  'Area 53 Festival',
  'Leoben-Schladnitz',
  'heavy metal, power metal, hard rock, melodic metal, extreme metal',
  'medium; Austria''s largest dedicated heavy-metal festival by organizer description',
  'https://area53festival.at/de/',
  'https://www.instagram.com/area53festival/',
  'https://www.facebook.com/area53festival/',
  'https://area53festival.at/de/',
  'Top A-priority. The 2027 lineup includes power/hard-rock-compatible names and the band contest provides a transparent route to the main stage.',
  'SNS-008',
  'castle-setting heavy metal open air plus band contest',
  'large'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'confirmed active; band-contest application phase had not yet opened on 19 September 2026',
  '2026 completed; 2027 ticket sales and first two band waves active', 'Not open as of 2026-09-19; monitor the official Bandcontest section weekly. The 2026 final was held 11 April after 130 applications.', NULL
FROM festivals WHERE external_id = 'SNS-008';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 84,
  25, 12, 7.5,
  15, 8, 6.8,
  10, NULL, 'Medium',
  'Verified', 'Yes; both the main lineup and band-contest application pool are international.',
  'Saxon, In Flames, Arch Enemy, Visions of Atlantis, HammerFall, Edguy, Eclipse', 'Top A-priority. The 2027 lineup includes power/hard-rock-compatible names and the band contest provides a transparent route to the main stage.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 13,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-008';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://area53festival.at/de/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-008';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'VAZ-Schladnitz / Hannes Kaufmann and Oliver Seebacher', 'Festival booking contact',
  'contact@bandmeetsband.at', NULL, 'https://www.instagram.com/area53festival/',
  'https://www.facebook.com/area53festival/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-008'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Apply to the official 2027 Bandcontest when it opens. Six bands are preselected from national and international applications; two win main-stage slots. Direct festival pitch can also be sent to the official contact. Metal-market-only contact oli@bmb-booking.at should not be confused with band booking unless redirected.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-008'
  AND festival_editions.edition_year = 2027;

-- SNS-009: National Rock Fest Hotalich
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Sevlievo Municipality' ORDER BY id LIMIT 1),
  'National Rock Fest Hotalich',
  'Sevlievo',
  'hard rock, classic rock, heavy metal',
  'medium',
  'https://www.sevlievo.bg/bg/novini/silna-programa-na-rok-fest-hotalich-tazi-godina-1',
  NULL,
  'https://www.facebook.com/RockFestHotalich/',
  'https://www.sevlievo.bg/bg/novini/silna-programa-na-rok-fest-hotalich-tazi-godina-1',
  'A-priority and one of the strongest artist-profile matches in Bulgaria.',
  'SNS-009',
  'municipal open-air festival at medieval fortress',
  'medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '28-29 August 2026', 'September-December; international headliners may be contracted earlier', NULL
FROM festivals WHERE external_id = 'SNS-009';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 84,
  21, 12, 12.6,
  13.5, 7.2, 10,
  8, NULL, 'High',
  'Verified', 'yes',
  'Marco Mendoza, Johnny Gioeli, Ronnie Romero, SEVI', 'A-priority and one of the strongest artist-profile matches in Bulgaria.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 14,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-009';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.sevlievo.bg/bg/novini/silna-programa-na-rok-fest-hotalich-tazi-godina-1', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-009';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rocklive.bg/concert/hotalich-rock-fest-2026?lang=en', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-009';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Sevlievo Municipality', 'Festival booking contact',
  'sevlievo@sevlievo.bg', '+359 675 32791', NULL,
  'https://www.facebook.com/RockFestHotalich/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-009'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated municipal booking; email an EPK and ask to be forwarded to the Hotalich programming team.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-009'
  AND festival_editions.edition_year = 2027;

-- SNS-010: Rock Fest Chirpan
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock Fest-Chirpan nonprofit association with Chirpan Municipality' ORDER BY id LIMIT 1),
  'Rock Fest Chirpan',
  'Chirpan',
  'rock, hard rock, heavy metal',
  'small-medium',
  'https://www.chirpan.bg/bg/novini/rok-fest-chirpan-2026-na-stsenata-v-park-tenyo-stoilov-za-19-i-pat',
  NULL,
  NULL,
  'https://www.chirpan.bg/bg/novini/rok-fest-chirpan-2026-na-stsenata-v-park-tenyo-stoilov-za-19-i-pat',
  'A-priority; established local festival closely aligned with traditional and melodic heavy rock.',
  'SNS-010',
  'municipal/nonprofit open-air festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '29-30 August 2026 (19th edition)', 'September-November for the following August edition', NULL
FROM festivals WHERE external_id = 'SNS-010';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 84,
  21, 12, 12.6,
  13.5, 7.2, 10,
  7.6, NULL, 'High',
  'Verified', 'yes',
  NULL, 'A-priority; established local festival closely aligned with traditional and melodic heavy rock.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 15,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-010';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.chirpan.bg/bg/novini/rok-fest-chirpan-2026-na-stsenata-v-park-tenyo-stoilov-za-19-i-pat', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-010';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.chirpan.bg/bg/kontakti', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-010';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock Fest-Chirpan nonprofit association with Chirpan Municipality', 'Festival booking contact',
  'kmet@chirpan.bg', '+359 4169 2122', NULL,
  NULL, 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-010'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated/invitation booking. Send EPK to the municipality marked for the festival association/culture department.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-010'
  AND festival_editions.edition_year = 2027;

-- SNS-011: Rethymno Rocks! Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rethymno Rocks! Festival team' ORDER BY id LIMIT 1),
  'Rethymno Rocks! Festival',
  'Rethymno, Crete',
  'heavy metal, thrash metal, power metal, dark/alternative metal',
  'medium',
  'https://rethymnorocks.gr/',
  'https://www.instagram.com/rethymnorocksfestival/',
  'https://www.facebook.com/rethymnorocksfestival/',
  'https://rethymnorocks.gr/',
  'A-priority. Enforcer and InnerWish demonstrate direct traditional/melodic-metal compatibility; pair with Chania to make a two-date Crete proposal.',
  'SNS-011',
  'Independent castle open-air festival',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; 2027 edition not yet announced',
  '26-29 August 2026 (festival no. 6)', 'September-December for the next August edition.', NULL
FROM festivals WHERE external_id = 'SNS-011';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 84,
  25, 15, 12.6,
  9, 6.4, 7,
  9, NULL, 'Medium',
  'Verified', 'Extensive',
  'Sacred Reich, Enforcer, Alcest, Tankard, Arcana, InnerWish', 'A-priority. Enforcer and InnerWish demonstrate direct traditional/melodic-metal compatibility; pair with Chania to make a two-date Crete proposal.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 16,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-011';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rethymnorocks.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-011';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rethymnorocks.gr/tickets/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-011';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rethymno Rocks! Festival team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rethymnorocksfestival/',
  'https://www.facebook.com/rethymnorocksfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-011'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated booking; send EPK through the official Facebook/Instagram page and request the artist-booking email.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-011'
  AND festival_editions.edition_year = 2027;

-- SNS-012: Rock pod Kamenom
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock pod Kamenom team' ORDER BY id LIMIT 1),
  'Rock pod Kamenom',
  'Snina',
  'heavy metal, power metal, hard rock, folk metal',
  'medium',
  'https://www.rockpodkamenom.sk/',
  'https://www.instagram.com/rockpodkamenom/',
  'https://www.facebook.com/rockpodkamenom/',
  'https://www.rockpodkamenom.sk/',
  'A-priority and among Slovakia''s strongest matches for melodic heavy/power metal.',
  'SNS-012',
  'regional rock/metal open air',
  'medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; date unannounced',
  'Annual August edition; official site was temporarily unreachable during verification', 'September-November', NULL
FROM festivals WHERE external_id = 'SNS-012';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 83,
  25, 15, 12.6,
  9, 6.4, 7.2,
  7.6, NULL, 'Medium',
  'Verified', 'Extensive',
  NULL, 'A-priority and among Slovakia''s strongest matches for melodic heavy/power metal.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 17,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-012';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockpodkamenom.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-012';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockpodkamenom/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-012';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock pod Kamenom team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockpodkamenom/',
  'https://www.facebook.com/rockpodkamenom/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-012'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Official social DM/contact route; request band-booking address', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-012'
  AND festival_editions.edition_year = 2027;

-- SNS-013: Into Battle Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Eat Metal Records' ORDER BY id LIMIT 1),
  'Into Battle Festival',
  'Athens',
  'traditional heavy metal, power metal, epic metal, speed metal',
  'small-medium',
  'https://eatmetalrecords.com/',
  'https://www.instagram.com/eatmetalrecords/',
  'https://www.facebook.com/eatmetalrecords/',
  'https://eatmetalrecords.com/',
  'A/B-priority. Excellent genre match and potentially more attainable than the largest Athens festivals; package with an Athens club date or Horns Up.',
  'SNS-013',
  'Independent indoor underground metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced',
  '29 November 2026 announced; previous two-day edition 26-27 September 2025', 'Contact 8-12 months before the desired autumn edition.', NULL
FROM festivals WHERE external_id = 'SNS-013';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 82,
  25, 12, 12.6,
  9, 6.4, 8.6,
  8, NULL, 'Medium',
  'Verified', 'Yes; central to programming',
  'Enforcer, Mirror, Savage, Forgotten Scroll', 'A/B-priority. Excellent genre match and potentially more attainable than the largest Athens festivals; package with an Athens club date or Horns Up.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 18,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-013';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://eatmetalrecords.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-013';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://soundcheck.network/into-battle-festival-vol-vi-epistrefei-kyttaro-stis/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-013';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Eat Metal Records', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/eatmetalrecords/',
  'https://www.facebook.com/eatmetalrecords/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-013'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct label/promoter booking pitch to Eat Metal Records; no public application form.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-013'
  AND festival_editions.edition_year = 2027;

-- SNS-014: TÁBOR Fesztivál
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'TÁBOR Fesztivál' ORDER BY id LIMIT 1),
  'TÁBOR Fesztivál',
  'Alsóörs',
  'hard rock, heavy metal, punk rock, Hungarian rock',
  'medium; 30+ bands',
  'https://www.taborfesztival.hu/',
  'https://www.instagram.com/taborfesztival/',
  'https://www.facebook.com/taborfesztival',
  'https://www.taborfesztival.hu/',
  'A-priority stylistic fit for melodic heavy/hard rock; realistic if packaged with another Balaton/Budapest date.',
  'SNS-014',
  'independent camping rock festival; successor to Zorall Sörolimpia',
  'medium'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not yet announced; 2026 edition officially confirmed and completed',
  '26-29 August 2026', 'Recommended September-November 2026 for the likely late-August 2027 edition.', NULL
FROM festivals WHERE external_id = 'SNS-014';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 82,
  21, 12, 12.6,
  13.5, 6.4, 8,
  8, NULL, 'High',
  'Verified', 'Primarily Hungarian lineup; foreign-band policy is not published, so acceptance must be confirmed directly.',
  'Zorall, Tankcsapda, Ossian, Road', 'A-priority stylistic fit for melodic heavy/hard rock; realistic if packaged with another Balaton/Budapest date.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 19,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-014';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.taborfesztival.hu/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-014';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockvilag.hu/fesztivalok/zorall-sorolimpia-helyett-tabor-fesztival-2020-08-26-29-alsoors/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-014';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'TÁBOR Fesztivál', 'Festival booking contact',
  'info@taborfesztival.hu', '+36 20 414 9194', 'https://www.instagram.com/taborfesztival/',
  'https://www.facebook.com/taborfesztival', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-014'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'No public artist form; send EPK and routing offer to the official email, then follow by Facebook/Instagram DM.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-014'
  AND festival_editions.edition_year = 2027;

-- SNS-015: Midalidare Rock in the Wine Valley
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Midalidare Estate' ORDER BY id LIMIT 1),
  'Midalidare Rock in the Wine Valley',
  'Mogilovo',
  'classic rock, hard rock, heavy metal',
  'large',
  'https://midalidarerock.bg/events-eng',
  NULL,
  NULL,
  'https://midalidarerock.bg/events-eng',
  'Strategic stretch target: excellent genre fit but significantly more competitive than the pilot''s small-festival core.',
  'SNS-015',
  'international destination rock festival (stretch)',
  'large'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'announced',
  '9-11 July 2027 announced', 'Immediately; 2027 is already announced', NULL
FROM festivals WHERE external_id = 'SNS-015';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 81,
  21, 12, 7.5,
  12, 8, 10,
  10, NULL, 'Medium',
  'Verified', 'yes',
  NULL, 'Strategic stretch target: excellent genre fit but significantly more competitive than the pilot''s small-festival core.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 20,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-015';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://midalidarerock.bg/events-eng', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-015';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Midalidare Estate', 'Festival booking contact',
  'rock@midalidare.bg', NULL, NULL,
  NULL, 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-015'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional EPK to festival email; pitch opening/support or side-event rather than assuming main-stage placement.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-015'
  AND festival_editions.edition_year = 2027;

-- SNS-016: Metalfest Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Pragokoncert Bohemia a.s.' ORDER BY id LIMIT 1),
  'Metalfest Open Air',
  'Plzen',
  'heavy metal, power metal, hard rock, folk metal',
  'large',
  'https://www.metalfest.cz/',
  NULL,
  'https://www.facebook.com/metalfestopenair/',
  'https://www.metalfest.cz/',
  'Stretch target; excellent genre fit but highly competitive.',
  'SNS-016',
  'amphitheatre metal festival',
  'large'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; monitor official announcement',
  '5-7 June 2026', 'September-October', NULL
FROM festivals WHERE external_id = 'SNS-016';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 81,
  25, 15, 7.5,
  9, 8, 6.8,
  10, NULL, 'High',
  'Verified', 'Extensive',
  NULL, 'Stretch target; excellent genre fit but highly competitive.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 21,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-016';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.metalfest.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-016';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockcastle.cz/en/kontakt', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-016';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Pragokoncert Bohemia a.s.', 'Festival booking contact',
  NULL, '+420 777 701 591', NULL,
  'https://www.facebook.com/metalfestopenair/', 'phone', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-016'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Agency-curated; contact Pragokoncert band booking/Jiri Daron', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-016'
  AND festival_editions.edition_year = 2027;

-- SNS-017: Rock Castle
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Pragokoncert Bohemia a.s.' ORDER BY id LIMIT 1),
  'Rock Castle',
  'Moravsky Krumlov',
  'heavy metal, power metal, hard rock',
  'medium-large',
  'https://www.rockcastle.cz/en/',
  'https://www.instagram.com/rockcastle.cz/',
  'https://www.facebook.com/rockcastle.cz/',
  'https://www.rockcastle.cz/en/',
  'Stretch A-priority and one of the best genre matches. Emphasize previous shared stage with Primal Fear.',
  'SNS-017',
  'castle-park rock/metal open air',
  'medium-large'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Confirmed for 12-14 August 2027',
  '13-15 August 2026', 'September-October; 2027 booking already underway', NULL
FROM festivals WHERE external_id = 'SNS-017';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 81,
  25, 15, 7.5,
  9, 8, 6.8,
  10, NULL, 'High',
  'Verified', 'Extensive',
  'Powerwolf, Testament, Primal Fear, Battle Beast, Victorius', 'Stretch A-priority and one of the best genre matches. Emphasize previous shared stage with Primal Fear.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 22,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-017';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockcastle.cz/en/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-017';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockcastle.cz/en/kontakt', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-017';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Pragokoncert Bohemia a.s.', 'Festival booking contact',
  NULL, '+420 777 701 591', 'https://www.instagram.com/rockcastle.cz/',
  'https://www.facebook.com/rockcastle.cz/', 'phone', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-017'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Band-booking contact is Jiri Daron via the official contact page; pitch to agency, no open form', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-017'
  AND festival_editions.edition_year = 2027;

-- SNS-018: Rock Hard Festival Greece
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock Hard Greece' ORDER BY id LIMIT 1),
  'Rock Hard Festival Greece',
  'Athens',
  'heavy metal, hard rock, power metal, doom metal',
  'medium',
  'https://rockhardfestival.gr/',
  'https://www.instagram.com/rockhardgreece/',
  'https://www.facebook.com/rockhardgreece/',
  'https://rockhardfestival.gr/',
  'A/B-priority. Very good profile match, but editorial/promoter curation makes it competitive.',
  'SNS-018',
  'Indoor magazine-branded metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced at verification date',
  '11-12 September 2026', 'October-February for a possible following September edition.', NULL
FROM festivals WHERE external_id = 'SNS-018';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 81,
  25, 12, 12.6,
  9, 6.4, 8.6,
  7.6, NULL, 'Medium',
  'Verified', 'Yes',
  'Grand Magus, international and Greek heavy-metal acts', 'A/B-priority. Very good profile match, but editorial/promoter curation makes it competitive.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 23,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-018';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rockhardfestival.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-018';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockhardgreece/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-018';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock Hard Greece', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockhardgreece/',
  'https://www.facebook.com/rockhardgreece/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-018'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated industry booking; approach Rock Hard Greece through official channels with EPK and a support-slot proposal.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-018'
  AND festival_editions.edition_year = 2027;

-- SNS-019: Ostrów Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Stowarzyszenie Ostrowskie Progi' ORDER BY id LIMIT 1),
  'Ostrów Rock Festival',
  'Ostrów Wielkopolski',
  'progressive metal, doom metal, rock, heavy metal',
  'medium international',
  'https://progmetalrock.tixx.pl/bilety/2401/ostrow-rock-festival-2026.html',
  'https://www.instagram.com/ostrow_rock_festival/',
  'https://www.facebook.com/ostrowprogmetalrockfestival/',
  'https://progmetalrock.tixx.pl/bilety/2401/ostrow-rock-festival-2026.html',
  'Very high strategic fit and the clearest open-submission route in this dataset. Competition is strong; lead with international support history and two excellent live videos.',
  'SNS-019',
  'independent two-stage progressive/metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; active established festival',
  '25-26 July 2026', 'Monitor from September 2026; likely autumn call for following July', NULL
FROM festivals WHERE external_id = 'SNS-019';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 81,
  21, 15, 12.6,
  12, 6.4, 6,
  8, NULL, 'High',
  'Verified', 'strongly verified',
  'My Dying Bride, Tiamat, Swallow the Sun, Avkrvst', 'Very high strategic fit and the clearest open-submission route in this dataset. Competition is strong; lead with international support history and two excellent live videos.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 24,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-019';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://progmetalrock.tixx.pl/bilety/2401/ostrow-rock-festival-2026.html', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-019';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/ostrow_rock_festival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-019';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Stowarzyszenie Ostrowskie Progi', 'Festival booking contact',
  'shop@progmetalrock.pl', NULL, 'https://www.instagram.com/ostrow_rock_festival/',
  'https://www.facebook.com/ostrowprogmetalrockfestival/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-019'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'The official Instagram stated that band submissions should be emailed to shop@progmetalrock.pl; 6-10 bands were to be selected for 2026.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-019'
  AND festival_editions.edition_year = 2027;

-- SNS-020: PolineROOOCK Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'PolineROOOCK team with Plovdiv Municipality support' ORDER BY id LIMIT 1),
  'PolineROOOCK Fest',
  'Plovdiv',
  'rock, hard rock, heavy metal',
  'medium',
  'https://www.visitplovdiv.com/en/node/14945',
  'https://www.instagram.com/polinerooockfest/',
  'https://www.facebook.com/PolineROOOCK.festival.BG/',
  'https://www.plovdiv.bg/svetovnata-rok-zvezda-roni-romero-e-hedlayner-na-19-oto-izdanie-na-polinerooock-fest-v-plovdiv/',
  'A-priority; direct stylistic match and proven use of international classic-rock/heavy-metal vocalists.',
  'SNS-020',
  'independent festival supported by municipality',
  'medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '28-30 August 2026 (19th edition)', 'September-November for the next edition', NULL
FROM festivals WHERE external_id = 'SNS-020';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 80,
  21, 12, 12.6,
  9, 7.2, 10,
  8, NULL, 'High',
  'Verified', 'yes',
  'Ronnie Romero, John Steel, Affection, Coven 5', 'A-priority; direct stylistic match and proven use of international classic-rock/heavy-metal vocalists.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 25,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-020';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.plovdiv.bg/svetovnata-rok-zvezda-roni-romero-e-hedlayner-na-19-oto-izdanie-na-polinerooock-fest-v-plovdiv/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-020';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.visitplovdiv.com/en/node/14945', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-020';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'PolineROOOCK team with Plovdiv Municipality support', 'Festival booking contact',
  NULL, '+359 896 886 670', 'https://www.instagram.com/polinerooockfest/',
  'https://www.facebook.com/PolineROOOCK.festival.BG/', 'phone', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-020'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'DM the official festival pages with concise EPK; phone is published for festival information. No open form found.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-020'
  AND festival_editions.edition_year = 2027;

-- SNS-021: Metal Union Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Metal Union Agrinio' ORDER BY id LIMIT 1),
  'Metal Union Fest',
  'Agrinio',
  'heavy metal, power metal, thrash metal, doom metal',
  'small-medium',
  NULL,
  'https://www.instagram.com/metalunionagrinio/',
  'https://www.facebook.com/metalunionagrinio/',
  'https://www.facebook.com/metalunionagrinio/',
  'A-priority. Exceptionally good stylistic match, manageable scale and proven foreign classic-metal bookings.',
  'SNS-021',
  'Independent city metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; 2027 date not yet announced',
  '28-30 August 2026', 'September-December is the recommended first-contact period.', NULL
FROM festivals WHERE external_id = 'SNS-021';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 80,
  25, 12, 12.6,
  6, 7.2, 8.6,
  9, NULL, 'Medium',
  'Verified', 'Yes',
  'Grand Magus, Tygers of Pan Tang, Domine, InnerWish, Sirius', 'A-priority. Exceptionally good stylistic match, manageable scale and proven foreign classic-metal bookings.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 26,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-021';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/metalunionagrinio/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-021';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.youtube.com/watch?v=x-E2y5MdVKQ', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-021';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Metal Union Agrinio', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/metalunionagrinio/',
  'https://www.facebook.com/metalunionagrinio/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-021'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'No public form or verified email found; direct message the official organizer page with EPK and ask for 2027 booking contact.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-021'
  AND festival_editions.edition_year = 2027;

-- SNS-022: More Than Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'More Than Fest team' ORDER BY id LIMIT 1),
  'More Than Fest',
  'Zvolenska Slatina',
  'heavy metal, power metal, hard rock',
  'medium',
  'https://www.morethanfest.sk/',
  NULL,
  'https://www.facebook.com/morethanfest/',
  'https://www.morethanfest.sk/',
  'A-priority if active; strong genre match but operational status needs verification.',
  'SNS-022',
  'rock/metal open air',
  'medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced',
  'Recurring summer edition; current official site inaccessible during check', 'September-November if active', NULL
FROM festivals WHERE external_id = 'SNS-022';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 80,
  25, 12, 12.6,
  9, 6.4, 7.2,
  7.6, NULL, 'Medium',
  'Verified', 'Yes',
  NULL, 'A-priority if active; strong genre match but operational status needs verification.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 27,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-022';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.morethanfest.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-022';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/morethanfest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-022';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'More Than Fest team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/morethanfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-022'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM; verify current organizer and next edition before pitching', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-022'
  AND festival_editions.edition_year = 2027;

-- SNS-023: Dark Bombastic Evening
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'DBE team' ORDER BY id LIMIT 1),
  'Dark Bombastic Evening',
  'Alba Iulia',
  'dark folk, post metal, doom metal, experimental',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/DarkBombasticEvening/',
  'https://www.facebook.com/DarkBombasticEvening/',
  'C-priority; active and international but aesthetically distant from mainstream melodic heavy/power metal.',
  'SNS-023',
  'independent dark/experimental open-air festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  'August 2026 (12th edition)', 'Autumn-winter', NULL
FROM festivals WHERE external_id = 'SNS-023';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 79,
  25, 12, 12.6,
  6, 6.4, 9,
  7.6, NULL, 'Medium',
  'Verified', 'yes',
  NULL, 'C-priority; active and international but aesthetically distant from mainstream melodic heavy/power metal.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 28,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-023';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/DarkBombasticEvening/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-023';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://dinintunerec.com/2020/04/04/malevolent-creation-usa-domination-inc-gr-sphinx-uk-review/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-023';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'DBE team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/DarkBombasticEvening/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-023'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct message/curated booking only; pitch only if the band''s darker material can match the concept.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-023'
  AND festival_editions.edition_year = 2027;

-- SNS-024: Release Athens
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Release Athens' ORDER BY id LIMIT 1),
  'Release Athens',
  'Athens',
  'rock, metal, alternative, electronic, pop',
  'large / stretch target',
  'https://www.releaseathens.gr/',
  'https://www.instagram.com/releaseathens/',
  'https://www.facebook.com/releaseathens/',
  'https://www.releaseathens.gr/',
  'Stretch only. Not small-scale, but worth tracking because a compatible support slot has high career value.',
  'SNS-024',
  'Major multi-day commercial city festival',
  'large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Future edition expected; artist details not part of this small-festival pilot',
  'June-July 2026', '9-15 months ahead.', NULL
FROM festivals WHERE external_id = 'SNS-024';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 78,
  15, 15, 12,
  9, 8.8, 8.6,
  10, NULL, 'Medium',
  'Verified', 'Extensive',
  'international arena-level rock/metal and alternative artists', 'Stretch only. Not small-scale, but worth tracking because a compatible support slot has high career value.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 29,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-024';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.releaseathens.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-024';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/releaseathens/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-024';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Release Athens', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/releaseathens/',
  'https://www.facebook.com/releaseathens/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-024'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional promoter/agency submission only; request an early support slot on a compatible metal day.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-024'
  AND festival_editions.edition_year = 2027;

-- SNS-025: Nova Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Nova Music Entertainment / Barracuda Music' ORDER BY id LIMIT 1),
  'Nova Rock Festival',
  'Nickelsdorf',
  'rock, hard rock, heavy metal, punk, alternative',
  'very large; included only because IRFC provides a contest pathway to a slot',
  'https://www.novarock.at/',
  'https://www.instagram.com/novarockfestival/',
  'https://www.facebook.com/novarock/',
  'https://www.novarock.at/',
  'Stretch target and career upside, not a small-festival application. The practical route is winning/being selected through IRFC.',
  'SNS-025',
  'major international rock/metal festival',
  'large'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'active, but direct booking not a realistic cold-application route',
  'annual June festival; 2026 completed', 'Follow IRFC''s annual competition call; main festival programming begins far in advance.', NULL
FROM festivals WHERE external_id = 'SNS-025';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 77,
  21, 15, 7.5,
  9, 8, 6.8,
  10, NULL, 'Medium',
  'Verified', 'Extensive international lineup.',
  NULL, 'Stretch target and career upside, not a small-festival application. The practical route is winning/being selected through IRFC.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 30,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-025';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.novarock.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-025';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://irfc.at/programm/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-025';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Nova Music Entertainment / Barracuda Music', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/novarockfestival/',
  'https://www.facebook.com/novarock/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-025'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Prioritize the Iron Road to Nova Rock contest rather than cold-booking Nova Rock. Direct lineup is agency-curated.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-025'
  AND festival_editions.edition_year = 2027;

-- SNS-026: Vienna Metal Meeting
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Vienna Metal Meeting' ORDER BY id LIMIT 1),
  'Vienna Metal Meeting',
  'Vienna',
  'heavy metal, doom metal, death metal, black metal, progressive metal',
  'medium indoor festival',
  'https://www.viennametalmeeting.com/',
  'https://www.instagram.com/viennametalmeeting/',
  'https://www.facebook.com/viennametalmeeting/',
  'https://www.viennametalmeeting.com/',
  'B-priority: respected city showcase, though heavier/darker than the band''s core style.',
  'SNS-026',
  'indoor multi-band metal festival/meeting',
  'medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  '2026 edition confirmed by official site', 'Recommended 9-12 months before the likely spring event.', NULL
FROM festivals WHERE external_id = 'SNS-026';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 77,
  21, 12, 12.6,
  9, 7.2, 6.8,
  8.2, NULL, 'Medium',
  'Verified', 'Yes; international metal lineup is central to the event.',
  NULL, 'B-priority: respected city showcase, though heavier/darker than the band''s core style.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 31,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-026';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.viennametalmeeting.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-026';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Vienna Metal Meeting', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/viennametalmeeting/',
  'https://www.facebook.com/viennametalmeeting/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-026'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; official social DM/site imprint route. No public band form or booking email was verified.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-026'
  AND festival_editions.edition_year = 2027;

-- SNS-027: Rockstadt Extreme Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rockstadt Extreme Fest team' ORDER BY id LIMIT 1),
  'Rockstadt Extreme Fest',
  'Ghimbav / Brașov',
  'extreme metal, heavy metal, hardcore',
  'large',
  'https://rockstadtextremefest.ro/',
  'https://www.instagram.com/rockstadtextremefest/',
  'https://www.facebook.com/rockstadtextremefest/',
  'https://rockstadtextremefest.ro/',
  'Strategic stretch; international value is high but genre leans extreme and competition is substantial.',
  'SNS-027',
  'major international metal festival (stretch)',
  'large'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '27-31 July 2026', 'Immediately/very early; large festival booking cycles are long', NULL
FROM festivals WHERE external_id = 'SNS-027';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 1, 77,
  21, 12, 7.5,
  9, 8, 9,
  10, NULL, 'Medium',
  'Verified', 'yes',
  NULL, 'Strategic stretch; international value is high but genre leans extreme and competition is substantial.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 32,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-027';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rockstadtextremefest.ro/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-027';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockstadtextremefest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-027';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rockstadt Extreme Fest team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockstadtextremefest/',
  'https://www.facebook.com/rockstadtextremefest/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-027'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional agency-level pitch for an early/support stage; not an ordinary small-festival application.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-027'
  AND festival_editions.edition_year = 2027;

-- SNS-028: Terchovsky Budzogan
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Terchova cultural/municipal partners and festival team' ORDER BY id LIMIT 1),
  'Terchovsky Budzogan',
  'Terchova',
  'Slovak rock, hard rock, metal',
  'medium',
  'https://www.terchovskybuzogan.sk/',
  NULL,
  'https://www.facebook.com/terchovskybuzogan/',
  'https://www.terchovskybuzogan.sk/',
  'A/B-priority. Strong regional rock audience; melodic hard-rock angle will work best.',
  'SNS-028',
  'municipal/regional rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected; unannounced',
  'Annual August festival', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-028';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 77,
  21, 12, 12.6,
  9, 7.2, 7.2,
  7.6, NULL, 'Medium',
  'Verified', 'Mostly Czech/Slovak; occasional foreign potential',
  NULL, 'A/B-priority. Strong regional rock audience; melodic hard-rock angle will work best.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 33,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-028';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.terchovskybuzogan.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-028';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/terchovskybuzogan/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-028';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Terchova cultural/municipal partners and festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/terchovskybuzogan/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-028'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Official social/contact route; request dramaturgy contact', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-028'
  AND festival_editions.edition_year = 2027;

-- SNS-029: Moto Rock Fest Prohodat na Roka - Petrohan
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Mountain Brothers MCC' ORDER BY id LIMIT 1),
  'Moto Rock Fest Prohodat na Roka - Petrohan',
  'Barzia / Petrohan',
  'hard rock, heavy metal, classic rock',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/MCCMountainBrothers/',
  'https://bnrnews.bg/vidin/post/505047/moto-rok-fest-prohodat-na-roka-shte-se-provede-v-podnozhieto-na-petrohan',
  'A-priority; motor-club audience and stated Bulgarian/international band program are a strong fit.',
  'SNS-029',
  'motorcycle-club rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '24-26 July 2026', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-029';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 76,
  21, 12, 12.6,
  6, 6.4, 10,
  7.6, NULL, 'Medium',
  'Verified', 'yes',
  NULL, 'A-priority; motor-club audience and stated Bulgarian/international band program are a strong fit.', 'Prepare personalized EPK and contact',
  '2026-09-19', 'pilot-2026-09-19', 34,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-029';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://bnrnews.bg/vidin/post/505047/moto-rok-fest-prohodat-na-roka-shte-se-provede-v-podnozhieto-na-petrohan', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-029';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/MCCMountainBrothers/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-029';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Mountain Brothers MCC', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/MCCMountainBrothers/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-029'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM to the motorcycle club with EPK and a clear all-in offer.', 'Prepare personalized EPK and contact', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-029'
  AND festival_editions.edition_year = 2027;

-- SNS-030: Euro Bike Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Euro Bike Fest team' ORDER BY id LIMIT 1),
  'Euro Bike Fest',
  'Pasohlavky',
  'hard rock, rock, metal, biker rock',
  'medium',
  'https://www.eurobikefest.cz/',
  'https://www.instagram.com/eurobikefest/',
  'https://www.facebook.com/eurobikefest/',
  'https://www.eurobikefest.cz/',
  'A-priority. Very good hard-rock audience fit; stress classic, anthemic set and support history.',
  'SNS-030',
  'motorcycle rally with live rock programme',
  'medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected; not yet confirmed',
  'Annual late May/June', 'September-November', NULL
FROM festivals WHERE external_id = 'SNS-030';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 75,
  21, 12, 12.6,
  9, 6.4, 6.8,
  7.6, NULL, 'Medium',
  'Verified', 'Yes/possible',
  NULL, 'A-priority. Very good hard-rock audience fit; stress classic, anthemic set and support history.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 35,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-030';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.eurobikefest.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-030';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/eurobikefest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-030';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Euro Bike Fest team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/eurobikefest/',
  'https://www.facebook.com/eurobikefest/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-030'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact organizer through official site/socials with biker-event live-set offer', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-030'
  AND festival_editions.edition_year = 2027;

-- SNS-031: Kamenite Cas Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Kamenite Cas Rock Fest team' ORDER BY id LIMIT 1),
  'Kamenite Cas Rock Fest',
  'Vysni Lhoty',
  'hard rock, heavy metal, Czech rock',
  'small-medium',
  'https://www.kamenitecasrockfest.cz/',
  NULL,
  'https://www.facebook.com/kamenitecasrockfest/',
  'https://www.kamenitecasrockfest.cz/',
  'A/B-priority small target. Excellent audience fit; present a cost-controlled routed offer.',
  'SNS-031',
  'village rock/metal open air',
  'small-medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced; recurring',
  'Annual summer edition; 2027 date not found', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-031';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 75,
  21, 12, 12.6,
  9, 6.4, 6.8,
  7.6, NULL, 'Medium',
  'Verified', 'Mostly Czech/Slovak; foreign history unclear',
  NULL, 'A/B-priority small target. Excellent audience fit; present a cost-controlled routed offer.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 36,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-031';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.kamenitecasrockfest.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-031';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/kamenitecasrockfest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-031';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Kamenite Cas Rock Fest team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/kamenitecasrockfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-031'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM; ask for dramaturgy/booking contact', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-031'
  AND festival_editions.edition_year = 2027;

-- SNS-032: Symbolic Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Symbolic festival team' ORDER BY id LIMIT 1),
  'Symbolic Open Air',
  'Tri Dvory u Kolina',
  'death metal, thrash metal, heavy metal',
  'small-medium',
  'https://www.symbolic.cz/',
  NULL,
  'https://www.facebook.com/symbolicfestival/',
  'https://www.symbolic.cz/',
  'B/C-priority. Traditional-metal slot possible, but the event leans death/thrash.',
  'SNS-032',
  'independent metal open air',
  'small-medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced; recurring',
  'Annual summer edition', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-032';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'A', 0, 75,
  21, 12, 12.6,
  9, 6.4, 6.8,
  7.6, NULL, 'Medium',
  'Verified', 'Yes, mainly underground European metal',
  NULL, 'B/C-priority. Traditional-metal slot possible, but the event leans death/thrash.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 37,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-032';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.symbolic.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-032';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/symbolicfestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-032';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Symbolic festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/symbolicfestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-032'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'A',
  NULL, NULL, NULL,
  NULL, NULL, 'Official social DM/contact page', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-032'
  AND festival_editions.edition_year = 2027;

-- SNS-033: Gugulan Rock Open Air Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Asociația Gugulan Rock' ORDER BY id LIMIT 1),
  'Gugulan Rock Open Air Festival',
  'Caransebeș',
  'heavy metal, power metal, folk metal, extreme metal',
  'small-medium',
  NULL,
  'https://www.instagram.com/gugulanrock/',
  'https://www.facebook.com/gugulanrock/',
  'https://www.facebook.com/gugulanrock/',
  'Historically excellent fit, but not a current A lead until the organizer confirms another edition.',
  'SNS-033',
  'independent/local open-air metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '16-17 August 2024 (10th anniversary); no 2025/2026 edition confirmed in this pass', 'Contact now only as a status-check lead', NULL
FROM festivals WHERE external_id = 'SNS-033';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 85,
  25, 12, 12.6,
  12, 6.4, 9,
  7.6, 'B', 'Low',
  'Verified', 'yes',
  'Evergrey, Equilibrium', 'Historically excellent fit, but not a current A lead until the organizer confirms another edition.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 38,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-033';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/gugulanrock/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-033';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/gugulanrock/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-033';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Asociația Gugulan Rock', 'Festival booking contact',
  'gugulanrock@gmail.com', NULL, 'https://www.instagram.com/gugulanrock/',
  'https://www.facebook.com/gugulanrock/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-033'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Email/DM to confirm revival before submitting full EPK.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-033'
  AND festival_editions.edition_year = 2027;

-- SNS-034: AthensRocks
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'High Priority Promotions' ORDER BY id LIMIT 1),
  'AthensRocks',
  'Athens',
  'hard rock, metal, alternative rock',
  'large / stretch target',
  'https://www.athensrocks.gr/',
  'https://www.instagram.com/athensrocksfestival/',
  'https://www.facebook.com/AthensRocksFestival/',
  'https://www.athensrocks.gr/',
  'Stretch target. Good branding value but not a small-festival priority; pursue only with a strong agency introduction or sponsor-supported offer.',
  'SNS-034',
  'Major commercial city rock festival',
  'large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Summer festival brand; 2027 details not verified', '9-15 months ahead.', NULL
FROM festivals WHERE external_id = 'SNS-034';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 84,
  21, 15, 12,
  9, 8.8, 8.6,
  10, 'B', 'Low',
  'Verified', 'Extensive',
  'major international rock and metal headliners', 'Stretch target. Good branding value but not a small-festival priority; pursue only with a strong agency introduction or sponsor-supported offer.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 39,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-034';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.athensrocks.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-034';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/AthensRocksFestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-034';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'High Priority Promotions', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/athensrocksfestival/',
  'https://www.facebook.com/AthensRocksFestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-034'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'No open form; requires promoter/agent pitch for local or regional support position.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-034'
  AND festival_editions.edition_year = 2027;

-- SNS-035: Rockmaraton
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rockmaraton / Rock1' ORDER BY id LIMIT 1),
  'Rockmaraton',
  'Dunaújváros',
  'heavy metal, power metal, hard rock, thrash, death metal, metalcore',
  'large regional rather than small; included as a strategic stretch target',
  'https://rockmaraton.hu/',
  'https://www.instagram.com/rockmaraton_fesztival/',
  'https://www.facebook.com/rockmaraton/',
  'https://rockmaraton.hu/',
  'Excellent genre match but highly competitive and above the pilot''s preferred scale; stretch target only.',
  'SNS-035',
  'multi-stage open-air metal festival',
  'large'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed; official site still displays the 2025 edition',
  '2-6 July 2025', 'If reactivated, approach 9-12 months before the event.', NULL
FROM festivals WHERE external_id = 'SNS-035';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 83,
  25, 15, 7.5,
  9, 8, 8,
  10, 'B', 'Low',
  'Verified', 'Extensive international history.',
  'Powerwolf, Gloryhammer, DragonForce, Rhapsody of Fire, Brainstorm, Grave Digger, Visions of Atlantis', 'Excellent genre match but highly competitive and above the pilot''s preferred scale; stretch target only.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 40,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-035';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rockmaraton.hu/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-035';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rockmaraton / Rock1', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockmaraton_fesztival/',
  'https://www.facebook.com/rockmaraton/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-035'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'No public band application visible; pitch through official social channels/organizer with a support-stage proposal. Do not assume a 2027 edition until announced.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-035'
  AND festival_editions.edition_year = 2027;

-- SNS-036: Rockwave Festival - Terra Republic
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Didi Music / Rockwave Festival' ORDER BY id LIMIT 1),
  'Rockwave Festival - Terra Republic',
  'Katerini / Pieria',
  'rock, heavy metal, progressive metal, thrash metal',
  'medium-large / stretch target',
  'https://www.rockwavefestival.gr/',
  'https://www.instagram.com/rockwavefestival/',
  'https://www.facebook.com/RockwaveFestival/',
  'https://www.rockwavefestival.gr/',
  'High stylistic value but status must be confirmed. Geographically useful for a Thessaloniki/Trikala route.',
  'SNS-036',
  'Regional open-air sister festival',
  'medium-large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  '21 and 26-28 June 2025; no 2026 metal programme found', 'Ask about 2027 in autumn 2026; do not assume the sister edition is returning until confirmed.', NULL
FROM festivals WHERE external_id = 'SNS-036';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 79,
  21, 15, 7.5,
  9, 8, 8.6,
  10, 'B', 'Low',
  'Verified', 'Extensive in 2025',
  'Savatage, Michael Schenker, Opeth, Rotting Christ, Sacred Reich, The Halo Effect', 'High stylistic value but status must be confirmed. Geographically useful for a Thessaloniki/Trikala route.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 41,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-036';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockwavefestival.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-036';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/RockwaveFestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-036';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Didi Music / Rockwave Festival', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockwavefestival/',
  'https://www.facebook.com/RockwaveFestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-036'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional promoter pitch; request an opening/support position if the Pieria edition returns.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-036'
  AND festival_editions.edition_year = 2027;

-- SNS-037: Posada Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Asociația Rock Culture with local public partners' ORDER BY id LIMIT 1),
  'Posada Rock Festival',
  'Câmpulung Muscel',
  'hard rock, heavy metal, power metal',
  'medium',
  NULL,
  NULL,
  'https://www.facebook.com/PosadaRock/',
  'https://www.facebook.com/PosadaRock/',
  'Potential A target because of genre and competition/opening opportunities, but 2027 planning must first be confirmed.',
  'SNS-037',
  'municipal/association rock festival with band competition',
  'medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Annual late-summer format; a reliable 2026 edition/date was not surfaced in this pass', 'Competition calls historically appear months before the event; verify each edition', NULL
FROM festivals WHERE external_id = 'SNS-037';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 79,
  25, 12, 12.6,
  6, 7.2, 9,
  7.6, 'B', 'Low',
  'Verified', 'yes',
  NULL, 'Potential A target because of genre and competition/opening opportunities, but 2027 planning must first be confirmed.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 42,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-037';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/PosadaRock/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-037';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.primariacampulung.ro/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-037';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Asociația Rock Culture with local public partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/PosadaRock/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-037'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Monitor official competition call; established bands may also pitch for guest/support booking via the official page.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-037'
  AND festival_editions.edition_year = 2027;

-- SNS-038: Way Too Far Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'WTF Way Too Far Rock Festival team' ORDER BY id LIMIT 1),
  'Way Too Far Rock Festival',
  'Bistrița',
  'hard rock, heavy metal, power metal, alternative rock',
  'medium-large',
  NULL,
  NULL,
  'https://www.facebook.com/wtofficial/',
  'https://www.facebook.com/wtofficial/',
  'Excellent historical profile match and a strategic target if revived; currently not a confirmed live lead.',
  'SNS-038',
  'independent international open-air festival',
  'medium-large'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '23 August 2024 was the latest clearly verified major edition in this pass', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-038';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 78,
  25, 12, 7.5,
  6, 8, 9,
  10, 'B', 'Low',
  'Verified', 'yes',
  'Mr. Big, HammerFall, Katatonia, Marko Hietala', 'Excellent historical profile match and a strategic target if revived; currently not a confirmed live lead.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 43,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-038';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/wtofficial/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-038';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://blabbermouth.net/news/billy-sheehan-will-be-working-with-a-lot-of-folks-on-some-records-and-possibly-touring-as-well', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-038';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'WTF Way Too Far Rock Festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/wtofficial/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-038'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Confirm status through official Facebook before submitting EPK.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-038'
  AND festival_editions.edition_year = 2027;

-- SNS-039: Fekete Zaj Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Fekete Zaj' ORDER BY id LIMIT 1),
  'Fekete Zaj Festival',
  'Mátra-Sástó / Gyöngyös',
  'dark rock, post-metal, black metal, gothic, industrial, experimental',
  'small-medium niche festival',
  'https://feketezaj.hu/',
  'https://www.instagram.com/feketezaj/',
  'https://www.facebook.com/feketezaj/',
  'https://feketezaj.hu/',
  'C-priority: reputable and intimate, but darker/experimental than Saints ''N'' Sinners'' melodic heavy metal profile.',
  'SNS-039',
  'independent forest/camping alternative music festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'recurring, but 2027 dates unconfirmed',
  'summer 2026; exact date not reliably exposed in indexed official sources', 'Recommended September-November for the following summer.', NULL
FROM festivals WHERE external_id = 'SNS-039';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 77,
  21, 12, 12.6,
  9, 6.4, 8,
  8.2, 'B', 'Low',
  'Verified', 'Yes; the festival regularly curates international underground acts.',
  NULL, 'C-priority: reputable and intimate, but darker/experimental than Saints ''N'' Sinners'' melodic heavy metal profile.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 44,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-039';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://feketezaj.hu/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-039';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/feketezaj/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-039';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Fekete Zaj', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/feketezaj/',
  'https://www.facebook.com/feketezaj/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-039'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; contact via official site/social DM with EPK. No public application form was verified.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-039'
  AND festival_editions.edition_year = 2027;

-- SNS-040: Danube Rock Sounds
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local event team with Galați public partners' ORDER BY id LIMIT 1),
  'Danube Rock Sounds',
  'Galați',
  'rock, hard rock, heavy metal',
  'medium',
  NULL,
  NULL,
  'https://www.facebook.com/DanubeRockSounds/',
  'https://www.facebook.com/DanubeRockSounds/',
  'Potential A/B fit and useful Black Sea/Danube routing anchor, but current date needs confirmation.',
  'SNS-040',
  'municipal riverside rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Recent editions traceable; 2026/2027 date not confirmed in this pass', 'Autumn-winter if renewed', NULL
FROM festivals WHERE external_id = 'SNS-040';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 75,
  21, 12, 12.6,
  6, 7.2, 9,
  7.6, 'B', 'Low',
  'Verified', 'yes',
  NULL, 'Potential A/B fit and useful Black Sea/Danube routing anchor, but current date needs confirmation.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 45,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-040';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/DanubeRockSounds/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-040';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Local event team with Galați public partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/DanubeRockSounds/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-040'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Official-page DM and municipal culture contact; verify renewal before full pitch.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-040'
  AND festival_editions.edition_year = 2027;

-- SNS-041: European Bike Week
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Harley-Davidson Europe and regional partners' ORDER BY id LIMIT 1),
  'European Bike Week',
  'Faak am See',
  'classic rock, hard rock, blues rock, cover rock',
  'large rally; included because its live stages book smaller bands',
  'https://www.harley-davidson.com/gb/en/content/event-calendar/european-bike-week.html',
  'https://www.instagram.com/europeanbikeweek/',
  'https://www.facebook.com/EuropeanBikeWeek/',
  'https://www.harley-davidson.com/gb/en/content/event-calendar/european-bike-week.html',
  'A-priority audience match, but competition and logistics are higher. A classic-heavy 45/60-minute biker set is the correct pitch.',
  'SNS-041',
  'major Harley-Davidson motorcycle rally with multiple live-music stages',
  'large'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'recurring; exact live-music booking details not yet published',
  'annual, early September; 2026 edition completed', 'Recommended October 2026-January 2027 for September 2027.', NULL
FROM festivals WHERE external_id = 'SNS-041';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 74,
  21, 12, 7.5,
  9, 8, 6.8,
  10, NULL, 'Medium',
  'Verified', 'Yes; multinational event and audience.',
  NULL, 'A-priority audience match, but competition and logistics are higher. A classic-heavy 45/60-minute biker set is the correct pitch.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 46,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-041';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.harley-davidson.com/gb/en/content/event-calendar/european-bike-week.html', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-041';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/EuropeanBikeWeek/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-041';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Harley-Davidson Europe and regional partners', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/europeanbikeweek/',
  'https://www.facebook.com/EuropeanBikeWeek/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-041'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Request the entertainment/live-stage production contact through official event channels; there is no public band application form.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-041'
  AND festival_editions.edition_year = 2027;

-- SNS-042: Rock im Dorf
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock im Dorf cultural association' ORDER BY id LIMIT 1),
  'Rock im Dorf',
  'Scharnstein',
  'rock, alternative, indie, punk',
  'small rural festival',
  'https://www.rockimdorf.at/',
  'https://www.instagram.com/rockimdorf/',
  'https://www.facebook.com/rockimdorf/',
  'https://www.rockimdorf.at/',
  'C-priority: genuinely small-town and traceable, but more indie/alternative than melodic metal.',
  'SNS-042',
  'nonprofit rural open-air festival',
  'small'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'expected recurring; not yet announced',
  'annual summer event; 2026 activity indicated by official channels', 'September-December for the next summer.', NULL
FROM festivals WHERE external_id = 'SNS-042';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 74,
  25, 12, 11.1,
  9, 4.8, 6.8,
  5.6, NULL, 'Medium',
  'Verified', 'Not verified for heavy-metal acts; broader international/alternative bookings possible.',
  NULL, 'C-priority: genuinely small-town and traceable, but more indie/alternative than melodic metal.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 47,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-042';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockimdorf.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-042';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockimdorf/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-042';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock im Dorf cultural association', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockimdorf/',
  'https://www.facebook.com/rockimdorf/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-042'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact the nonprofit organizer via official site/socials; curated program, no public band form verified.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-042'
  AND festival_editions.edition_year = 2027;

-- SNS-043: BEERLAND Craft Beer & Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Jasmina event team/local partners' ORDER BY id LIMIT 1),
  'BEERLAND Craft Beer & Rock Fest',
  'Plovdiv',
  'rock, alternative rock, hard rock',
  'small-medium',
  'https://www.visitplovdiv.com/en/node/15533',
  NULL,
  'https://www.facebook.com/beerlandcraftfest/',
  'https://www.visitplovdiv.com/en/node/15533',
  'B-priority; less metal-focused but unusually actionable due to explicit participation contact.',
  'SNS-043',
  'craft-beer and rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '11-13 September 2026 (5th edition)', 'Autumn to early spring', NULL
FROM festivals WHERE external_id = 'SNS-043';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 74,
  21, 3, 12.6,
  13.5, 6.4, 10,
  7.6, NULL, 'High',
  'Verified', 'unconfirmed',
  NULL, 'B-priority; less metal-focused but unusually actionable due to explicit participation contact.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 48,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-043';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.visitplovdiv.com/en/node/15533', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-043';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/beerlandcraftfest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-043';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Jasmina event team/local partners', 'Festival booking contact',
  'info@jasmina.bg', '+359 886 958 350', NULL,
  'https://www.facebook.com/beerlandcraftfest/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-043'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct participation contact by email/phone; send EPK and specify requested stage fee/logistics.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-043'
  AND festival_editions.edition_year = 2027;

-- SNS-044: EJEKT Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'EJEKT Festival' ORDER BY id LIMIT 1),
  'EJEKT Festival',
  'Athens',
  'rock, alternative, electronic, pop',
  'large / stretch target',
  'https://www.ejekt.gr/',
  'https://www.instagram.com/ejektfestival/',
  'https://www.facebook.com/ejektfestival/',
  'https://www.ejekt.gr/',
  'Low-to-medium fit unless a hard-rock day is programmed. Keep outside the first outreach wave.',
  'SNS-044',
  'Major commercial city festival',
  'large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Summer 2026', '9-15 months ahead.', NULL
FROM festivals WHERE external_id = 'SNS-044';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 74,
  15, 15, 7.5,
  9, 8.8, 8.6,
  10, 'B', 'Low',
  'Verified', 'Extensive',
  'international rock and alternative headliners', 'Low-to-medium fit unless a hard-rock day is programmed. Keep outside the first outreach wave.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 49,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-044';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.ejekt.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-044';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/ejektfestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-044';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'EJEKT Festival', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/ejektfestival/',
  'https://www.facebook.com/ejektfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-044'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated commercial booking; professional support-slot pitch only.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-044'
  AND festival_editions.edition_year = 2027;

-- SNS-045: Up the Hammers Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Up the Hammers / Manolis Karazeris team' ORDER BY id LIMIT 1),
  'Up the Hammers Festival',
  'Athens',
  'traditional heavy metal, power metal, epic metal, doom metal',
  'medium',
  'https://www.up-the-hammers.gr/',
  'https://www.instagram.com/upthehammersfestival/',
  'https://www.facebook.com/UpTheHammersFestival/',
  'https://www.up-the-hammers.gr/',
  'A-priority stylistically but competitive. Career-value target rather than easiest booking.',
  'SNS-045',
  'Independent indoor international metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; verify current 2027 line-up directly',
  'March 2026 annual edition', 'Typically 9-15 months ahead; target 2028 if 2027 is already locked.', NULL
FROM festivals WHERE external_id = 'SNS-045';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 74,
  25, 3, 12.6,
  9, 6.4, 8.6,
  9, NULL, 'Medium',
  'Verified', 'Core feature of festival',
  'Jag Panzer, Titan Force, Heir Apparent, Manilla Road-related acts, Cirith Ungol', 'A-priority stylistically but competitive. Career-value target rather than easiest booking.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 50,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-045';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.up-the-hammers.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-045';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/UpTheHammersFestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-045';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Up the Hammers / Manolis Karazeris team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/upthehammersfestival/',
  'https://www.facebook.com/UpTheHammersFestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-045'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Highly curated specialist festival. Use official social/website contact with a very targeted traditional-metal EPK and emphasize international support history.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-045'
  AND festival_editions.edition_year = 2027;

-- SNS-046: ROXIGET Rock Music Talent Contest and Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Városi Könyvtár és Közösségi Ház / ROXIGET' ORDER BY id LIMIT 1),
  'ROXIGET Rock Music Talent Contest and Festival',
  'Szigetszentmiklós',
  'rock, hard rock, alternative rock, metal',
  'small municipal festival',
  'https://www.sargahaz.com/kozossegihaz/prg.php?prg=267',
  NULL,
  'https://www.facebook.com/Roxiget/',
  'https://www.sargahaz.com/kozossegihaz/prg.php?prg=267',
  'B-priority as a municipal guest appearance; low fee is likely, but useful beside a Budapest date.',
  'SNS-046',
  'municipal/community-house talent contest and one-day mini-festival',
  'small'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'recurring annually; 2027 call not yet published',
  '21 August 2026; 22nd edition', 'The 2026 contest call appeared in late July; monitor June-July 2027. Pitch a guest slot earlier, September-December 2026.', NULL
FROM festivals WHERE external_id = 'SNS-046';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 74,
  21, 12, 11.1,
  9, 4.8, 8,
  8, NULL, 'Medium',
  'Verified', 'No verified foreign-band precedent in the public 2026 programme.',
  'Zanzibar, Arms of Apollo, Stoned, Anyámkínja', 'B-priority as a municipal guest appearance; low fee is likely, but useful beside a Budapest date.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 51,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-046';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.sargahaz.com/kozossegihaz/prg.php?prg=267', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-046';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/Roxiget/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-046';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Városi Könyvtár és Közösségi Ház / ROXIGET', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/Roxiget/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-046'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Annual competition call is posted by the community house and Facebook page. Saints ''N'' Sinners should pitch a guest-band slot; contest eligibility for an established foreign band must be checked before applying.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-046'
  AND festival_editions.edition_year = 2027;

-- SNS-047: Rockwave Festival - Terra Vibe
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Didi Music / Rockwave Festival' ORDER BY id LIMIT 1),
  'Rockwave Festival - Terra Vibe',
  'Malakasa, Attica',
  'rock, metal, alternative rock',
  'large / stretch target',
  'https://www.rockwavefestival.gr/',
  'https://www.instagram.com/rockwavefestival/',
  'https://www.facebook.com/RockwaveFestival/',
  'https://www.rockwavefestival.gr/',
  'Stretch target. Strong credentials are relevant, but competition is high and an agent/promoter introduction is preferable.',
  'SNS-047',
  'Major commercial open-air festival',
  'large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not confirmed in reviewed sources',
  '20 June 2026', '9-15 months ahead.', NULL
FROM festivals WHERE external_id = 'SNS-047';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 73,
  15, 15, 7.5,
  9, 8, 8.6,
  10, 'B', 'Medium',
  'Verified', 'Extensive',
  'Alice Cooper, W.A.S.P., King Diamond, Floor Jansen, Paradise Lost', 'Stretch target. Strong credentials are relevant, but competition is high and an agent/promoter introduction is preferable.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 52,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-047';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockwavefestival.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-047';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/RockwaveFestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-047';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Didi Music / Rockwave Festival', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rockwavefestival/',
  'https://www.facebook.com/RockwaveFestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-047'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'No open submission; professional booking/agency introduction or direct promoter pitch for an early support slot.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-047'
  AND festival_editions.edition_year = 2027;

-- SNS-048: FEZEN Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'FEZEN' ORDER BY id LIMIT 1),
  'FEZEN Festival',
  'Székesfehérvár',
  'rock, metal, pop, electronic',
  'medium-large; strategic stretch',
  'https://fezen.hu/',
  'https://www.instagram.com/fezenfestival/',
  'https://www.facebook.com/fezenfestival/',
  'https://fezen.hu/',
  'Strong genre potential but more competitive and larger than the small-festival pilot; stretch target.',
  'SNS-048',
  'multi-day city festival with major rock/metal programming',
  'medium-large'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'summer 2025 activity; 2027 edition not verified', 'Typically approach 9-12 months ahead, subject to edition confirmation.', NULL
FROM festivals WHERE external_id = 'SNS-048';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 73,
  15, 15, 7.5,
  9, 8.8, 8,
  10, 'B', 'Low',
  'Verified', 'Extensive international rock/metal history.',
  NULL, 'Strong genre potential but more competitive and larger than the small-festival pilot; stretch target.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 53,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-048';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://fezen.hu/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-048';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/fezenfestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-048';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'FEZEN', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/fezenfestival/',
  'https://www.facebook.com/fezenfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-048'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; contact official channels/management. No public band form verified.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-048'
  AND festival_editions.edition_year = 2027;

-- SNS-049: Rock of Sadska
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock of Sadska team' ORDER BY id LIMIT 1),
  'Rock of Sadska',
  'Sadska',
  'Czech rock, hard rock, heavy metal',
  'medium',
  'https://www.rockofsadska.cz/',
  NULL,
  'https://www.facebook.com/rockofsadska/',
  'https://www.rockofsadska.cz/',
  'B-priority. Musically suitable, but the program is predominantly Czech/Slovak and budget for a Turkish act must be tested.',
  'SNS-049',
  'small-town rock open air',
  'medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced',
  'Annual, normally August; 2026 activity traceable but exact date not independently confirmed', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-049';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 72,
  21, 7.5, 12.6,
  9, 7.2, 6.8,
  7.6, NULL, 'Medium',
  'Verified', 'Limited/unclear',
  NULL, 'B-priority. Musically suitable, but the program is predominantly Czech/Slovak and budget for a Turkish act must be tested.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 54,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-049';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.rockofsadska.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-049';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockofsadska/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-049';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock of Sadska team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/rockofsadska/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-049'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Official Facebook DM; request current booking contact', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-049'
  AND festival_editions.edition_year = 2027;

-- SNS-050: Maglenijada - Požeški rok festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Požega cultural/tourism partners; Moto Asocijacija Srbije participated in 2026' ORDER BY id LIMIT 1),
  'Maglenijada - Požeški rok festival',
  'Požega',
  'rock, alternative rock, hard rock',
  'small',
  'https://topoz.org.rs/',
  NULL,
  NULL,
  'https://topoz.org.rs/jubilarna-10-maglenijada-pozeski-rok-festival/',
  'High practical fit for a municipal/motor event; likely budget-sensitive, so route with nearby dates.',
  'SNS-050',
  'Municipal square rock festival with motorcycle gathering',
  'small'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; recurring',
  '26 July 2026 (13th edition)', 'September-January recommended', NULL
FROM festivals WHERE external_id = 'SNS-050';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 72,
  21, 3, 11.1,
  15, 4.8, 9.4,
  8, NULL, 'High',
  'Verified', 'false',
  'Artan Lili, Drum, Fade Out, Michael Bob Vidaković', 'High practical fit for a municipal/motor event; likely budget-sensitive, so route with nearby dates.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 55,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-050';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://topoz.org.rs/jubilarna-10-maglenijada-pozeski-rok-festival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-050';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://zoomue.rs/pozega-u-nedelju-13-maglenijada/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-050';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Požega cultural/tourism partners; Moto Asocijacija Srbije participated in 2026', 'Festival booking contact',
  'topozega@mts.rs', '+381 31 714 650', NULL,
  NULL, 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-050'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'No public application form. Email the Tourist Organisation and request forwarding to the festival programmer; also offer a combined moto-rock set.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-050'
  AND festival_editions.edition_year = 2027;

-- SNS-051: picture on festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'picture on kulturverein' ORDER BY id LIMIT 1),
  'picture on festival',
  'Bildein',
  'rock, alternative, indie, punk, reggae',
  'small-medium village festival',
  'https://www.pictureon.at/',
  'https://www.instagram.com/pictureonfestival/',
  'https://www.facebook.com/pictureonfestival/',
  'https://www.pictureon.at/',
  'B-priority: attractive small-town cross-border setting, though the programming is broader and more alternative than pure metal.',
  'SNS-051',
  'nonprofit village open-air festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'expected recurring; 2027 artist details not confirmed',
  'annual summer festival; 2026 edition active', 'September-December for the following summer.', NULL
FROM festivals WHERE external_id = 'SNS-051';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 71,
  15, 12, 12.6,
  9, 7.2, 6.8,
  8.2, 'B', 'Medium',
  'Verified', 'Yes; international and Central European acts are common.',
  NULL, 'B-priority: attractive small-town cross-border setting, though the programming is broader and more alternative than pure metal.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 56,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-051';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.pictureon.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-051';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/pictureonfestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-051';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'picture on kulturverein', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/pictureonfestival/',
  'https://www.facebook.com/pictureonfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-051'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; use the official contact page/social channels with a concise EPK and Austria/Hungary routing proposal.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-051'
  AND festival_editions.edition_year = 2027;

-- SNS-052: Prestěnice Music Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Prestěnice Music Festival' ORDER BY id LIMIT 1),
  'Prestěnice Music Festival',
  'Prestěnice',
  'rock, hard rock, punk, metal',
  'medium',
  'https://www.pfest.cz/',
  NULL,
  'https://www.facebook.com/prestenicefestival/',
  'https://www.pfest.cz/',
  'B-priority. Broader rock audience; melodic material should be foregrounded.',
  'SNS-052',
  'rural multi-genre rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced; recurring',
  'Annual late June/early July', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-052';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 71,
  21, 7.5, 12.6,
  9, 6.4, 6.8,
  7.6, NULL, 'Medium',
  'Verified', 'Limited; mostly Czech/Slovak',
  NULL, 'B-priority. Broader rock audience; melodic material should be foregrounded.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 57,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-052';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.pfest.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-052';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/prestenicefestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-052';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Prestěnice Music Festival', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/prestenicefestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-052'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Website contact/social DM; no open band form verified', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-052'
  AND festival_editions.edition_year = 2027;

-- SNS-053: ARTmania Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'ARTmania Events' ORDER BY id LIMIT 1),
  'ARTmania Festival',
  'Sibiu',
  'progressive metal, gothic metal, alternative metal, rock',
  'large',
  'https://artmaniafestival.ro/',
  'https://www.instagram.com/artmaniafestival/',
  'https://www.facebook.com/ARTmania.Festival/',
  'https://artmaniafestival.ro/',
  'Strategic stretch. Strong visibility but more progressive/alternative and much harder to enter than pilot small festivals.',
  'SNS-053',
  'international urban rock/metal festival (stretch)',
  'large'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Recurring summer festival; 2027 lineup/date not confirmed in this pass', 'Immediately once dates are announced; large-festival cycle', NULL
FROM festivals WHERE external_id = 'SNS-053';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 71,
  15, 12, 7.5,
  9, 8, 9,
  10, 'B', 'Low',
  'Verified', 'yes',
  NULL, 'Strategic stretch. Strong visibility but more progressive/alternative and much harder to enter than pilot small festivals.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 58,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-053';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://artmaniafestival.ro/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-053';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/ARTmania.Festival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-053';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'ARTmania Events', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/artmaniafestival/',
  'https://www.facebook.com/ARTmania.Festival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-053'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional EPK/agency pitch; target support or secondary programming rather than standard open application.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-053'
  AND festival_editions.edition_year = 2027;

-- SNS-054: Dunavski Bratya Motorcycle Rally
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'MC Dunavski Bratya' ORDER BY id LIMIT 1),
  'Dunavski Bratya Motorcycle Rally',
  'Mechka / Ruse region',
  'rock, rock and roll, hard rock',
  'small-medium',
  'https://dunavskibratya.com/',
  NULL,
  'https://www.facebook.com/mc.danube.brothers/',
  'https://dunavskibratya.com/',
  'B-priority moto routing target, potentially combinable with Green Rock Fest Ruse contacts.',
  'SNS-054',
  'motorcycle-club rally with live rock',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '26-28 June 2026', 'Autumn-winter', NULL
FROM festivals WHERE external_id = 'SNS-054';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 70,
  21, 3, 12.6,
  9, 6.4, 10,
  7.6, NULL, 'Medium',
  'Verified', 'unconfirmed',
  NULL, 'B-priority moto routing target, potentially combinable with Green Rock Fest Ruse contacts.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 59,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-054';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://dunavskibratya.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-054';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/mc.danube.brothers/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-054';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'MC Dunavski Bratya', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/mc.danube.brothers/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-054'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact club through its site or Facebook and pitch for the live-music program.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-054'
  AND festival_editions.edition_year = 2027;

-- SNS-055: Tikveš Grozdober
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Municipality of Kavadarci' ORDER BY id LIMIT 1),
  'Tikveš Grozdober',
  'Kavadarci',
  'rock, pop, folk, ethno',
  'medium municipal festival',
  'https://kavadarci.gov.mk/',
  NULL,
  'https://www.facebook.com/OpstinaKavadarci/',
  'https://macedoniaguidebook.com/entertainment/tikves-grozdober-festival/',
  'Good municipal-concert target if a melodic, accessible set is offered. Not metal-specific; pitch as international classic hard rock/heavy metal.',
  'SNS-055',
  'Municipal grape-harvest festival with public rock/pop concerts',
  'medium'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected annual; date not announced',
  '4-6 September 2026', 'October-February recommended', NULL
FROM festivals WHERE external_id = 'SNS-055';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 70,
  21, 3, 12.6,
  9, 7.2, 9.4,
  7.6, NULL, 'Medium',
  'Verified', 'true',
  NULL, 'Good municipal-concert target if a melodic, accessible set is offered. Not metal-specific; pitch as international classic hard rock/heavy metal.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 60,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-055';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://macedoniaguidebook.com/entertainment/tikves-grozdober-festival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-055';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.povardarie.mk/en/calendar-of-events', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-055';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Municipality of Kavadarci', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/OpstinaKavadarci/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-055'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Write to the municipality/culture department and ask for the concert programme producer. No public band application form was located.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-055'
  AND festival_editions.edition_year = 2027;

-- SNS-056: Bikers for Humanity Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Bikers for Humanity Romania / Live Music Summer Camp Brezoi' ORDER BY id LIMIT 1),
  'Bikers for Humanity Rock Fest',
  'Brezoi',
  'rock, hard rock, folk metal, heavy metal',
  'medium',
  'https://bikersforhumanity.ro/',
  NULL,
  'https://www.facebook.com/p/Bikers-For-Humanity-Rock-Fest-100086300302886/',
  'https://bikersforhumanity.ro/en/rock-fest-rules-and-regulations/',
  'A-priority stylistically and for audience profile; confirm whether the booking policy is primarily Romanian acts.',
  'SNS-056',
  'humanitarian biker rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '18-21 June 2026', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-056';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 70,
  21, 3, 12.6,
  9, 6.4, 9,
  9, NULL, 'Medium',
  'Verified', 'unconfirmed',
  'Trooper, Bucovina, Timpuri Noi, Antract, Alexandra Căpitănescu', 'A-priority stylistically and for audience profile; confirm whether the booking policy is primarily Romanian acts.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 61,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-056';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://bikersforhumanity.ro/en/rock-fest-rules-and-regulations/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-056';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/p/Bikers-For-Humanity-Rock-Fest-100086300302886/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-056';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Bikers for Humanity Romania / Live Music Summer Camp Brezoi', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/p/Bikers-For-Humanity-Rock-Fest-100086300302886/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-056'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Use official site/social contact; pitch a guest slot and emphasize support for the humanitarian format.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-056'
  AND festival_editions.edition_year = 2027;

-- SNS-057: Zaječarska Gitarijada
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'City of Zaječar / Gitarijada' ORDER BY id LIMIT 1),
  'Zaječarska Gitarijada',
  'Zaječar',
  'rock, hard rock, alternative rock, metal',
  'medium',
  'https://gitarijada.rs/',
  'https://www.instagram.com/gitarijada/',
  'https://www.facebook.com/gitarijada/',
  'https://gitarijada.rs/',
  'High musical fit and strong profile value, but the main competition may not fit the band''s established status. Target guest/support booking.',
  'SNS-057',
  'Municipal open-air festival and demo-band competition',
  'medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced',
  '27-29 August 2026 (59th edition)', 'Typically winter-spring for the summer edition; contact now for 2027 guest booking', NULL
FROM festivals WHERE external_id = 'SNS-057';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 70,
  21, 3, 12.6,
  9, 7.2, 9.4,
  8, NULL, 'Medium',
  'Verified', 'true',
  'The Cult, Neverne Bebe, Crvena Jabuka, Zoster', 'High musical fit and strong profile value, but the main competition may not fit the band''s established status. Target guest/support booking.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 62,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-057';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://gitarijada.rs/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-057';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://gitarijada.rs/program/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-057';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'City of Zaječar / Gitarijada', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/gitarijada/',
  'https://www.facebook.com/gitarijada/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-057'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'The competition is intended for unsigned/demo bands; an established foreign act should pitch for a guest or support slot through the official channels. Watch the site for the annual competition call.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-057'
  AND festival_editions.edition_year = 2027;

-- SNS-058: Taksirat Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Password Production' ORDER BY id LIMIT 1),
  'Taksirat Festival',
  'Skopje',
  'rock, alternative, punk, metal, hip-hop, electronic',
  'medium-large',
  'https://taksirat.mk/',
  'https://www.instagram.com/taksiratfestival/',
  'https://www.facebook.com/taksirat/',
  'https://taksirat.mk/',
  'High strategic fit through the off-event/support route. Main festival is competitive; the promoter relationship is more valuable than a single application.',
  'SNS-058',
  'Winter indoor multi-genre festival and off-event series',
  'medium-large'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; long-running active brand',
  'Annual late-autumn/winter cycle; official site active, 2027 date not posted', 'Contact September-January; off-events may book year-round', NULL
FROM festivals WHERE external_id = 'SNS-058';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 69,
  15, 3, 12,
  12, 8, 9.4,
  10, NULL, 'High',
  'Verified', 'true',
  'Tarja Turunen, 1000mods, Frank Turner, Altın Gün', 'High strategic fit through the off-event/support route. Main festival is competitive; the promoter relationship is more valuable than a single application.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 63,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-058';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://taksirat.mk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-058';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://password.mk/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-058';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Password Production', 'Festival booking contact',
  'info@password.mk', NULL, 'https://www.instagram.com/taksiratfestival/',
  'https://www.facebook.com/taksirat/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-058'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional curated booking through Password Production; pitch either the main festival or a Taksirat off-event/support show.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-058'
  AND festival_editions.edition_year = 2027;

-- SNS-059: Rokerijada
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'UG Fabrika / Rokerijada' ORDER BY id LIMIT 1),
  'Rokerijada',
  'Petrovac na Mlavi',
  'rock, hard rock, punk, alternative, metal',
  'small-medium',
  'https://rokerijada.fabrika.pt/',
  'https://www.instagram.com/rokerijada/',
  'https://www.facebook.com/rokerijada/',
  'https://www.facebook.com/rokerijada/',
  'One of the strongest small-festival targets. The band should pitch an original melodic-heavy set, not a demo competition entry.',
  'SNS-059',
  'Independent rock and urban-culture festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; active annual event',
  '24-25 July 2026 (10th anniversary edition)', 'September-February recommended', NULL
FROM festivals WHERE external_id = 'SNS-059';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 69,
  21, 3, 12.6,
  9, 6.4, 9.4,
  8, NULL, 'Medium',
  'Verified', 'true',
  'No Control, Dushmans, The Jungle Project, Art Diler', 'One of the strongest small-festival targets. The band should pitch an original melodic-heavy set, not a demo competition entry.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 64,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-059';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rokerijada/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-059';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/rokerijada/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-059';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'UG Fabrika / Rokerijada', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/rokerijada/',
  'https://www.facebook.com/rokerijada/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-059'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; submit EPK by Facebook/Instagram DM while the website is under maintenance.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-059'
  AND festival_editions.edition_year = 2027;

-- SNS-060: Japara Rock Open Air / Total Metal
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Japara Mega Rock / Valentin Bojinov' ORDER BY id LIMIT 1),
  'Japara Rock Open Air / Total Metal',
  'Opanets / Pleven',
  'heavy metal, thrash metal, hard rock',
  'small',
  NULL,
  'https://www.instagram.com/japararock/',
  'https://www.facebook.com/japaramegarock/',
  'https://www.facebook.com/japaramegarock/',
  'A-priority among genuinely small events; direct named booking contact makes it actionable.',
  'SNS-060',
  'private camping metal festival',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '25 April and 13-16 August 2026 events', 'September-January; later opportunities may appear for spring/summer mini-events', NULL
FROM festivals WHERE external_id = 'SNS-060';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 68,
  21, 3, 11.1,
  13.5, 4, 10,
  5, NULL, 'High',
  'Verified', 'unconfirmed',
  NULL, 'A-priority among genuinely small events; direct named booking contact makes it actionable.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 65,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-060';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/japaramegarock/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-060';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/japararock/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-060';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Japara Mega Rock / Valentin Bojinov', 'Festival booking contact',
  'Valentinbojinov999@gmail.com', '+359 87 862 7430', 'https://www.instagram.com/japararock/',
  'https://www.facebook.com/japaramegarock/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-060'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct booking email or phone/DM with EPK and an all-in routing offer.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-060'
  AND festival_editions.edition_year = 2027;

-- SNS-061: Rock Under the Stars
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock Club KEV with Narodno Chitalishte Popovo' ORDER BY id LIMIT 1),
  'Rock Under the Stars',
  'Popovo',
  'rock, hard rock',
  'small',
  'https://chitalishtepopovo.com/novini-i-sabitiya/rok-pod-zvezdite.html',
  NULL,
  NULL,
  'https://chitalishtepopovo.com/novini-i-sabitiya/rok-pod-zvezdite.html',
  'A/B target for a routed small-town date; direct institutional contact is available.',
  'SNS-061',
  'local club/community-centre open-air concert series',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '27 June 2026 (3rd edition)', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-061';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 68,
  21, 3, 11.1,
  13.5, 4.8, 10,
  5, NULL, 'High',
  'Verified', 'unconfirmed',
  NULL, 'A/B target for a routed small-town date; direct institutional contact is available.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 66,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-061';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://chitalishtepopovo.com/novini-i-sabitiya/rok-pod-zvezdite.html', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-061';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://chitalishtepopovo.com/kontakti/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-061';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock Club KEV with Narodno Chitalishte Popovo', 'Festival booking contact',
  'narodno.chitalishte.popovo@abv.bg', '+359 879 920 608', NULL,
  NULL, 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-061'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Email the community centre and ask to forward the EPK to Rock Club KEV/programming.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-061'
  AND festival_editions.edition_year = 2027;

-- SNS-062: Slizovica
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Horkyze Slize / festival team' ORDER BY id LIMIT 1),
  'Slizovica',
  'Vrbove',
  'rock, hard rock, punk rock',
  'medium',
  'https://www.slizovica.sk/',
  NULL,
  'https://www.facebook.com/slizovica/',
  'https://www.slizovica.sk/',
  'B-priority; broader rock/punk audience, so pitch the band''s most accessible hard-rock material.',
  'SNS-062',
  'band-curated town rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected; unannounced',
  'Annual late summer edition', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-062';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 68,
  21, 3, 12.6,
  9, 7.2, 7.2,
  7.6, NULL, 'Medium',
  'Verified', 'Mostly Czech/Slovak',
  NULL, 'B-priority; broader rock/punk audience, so pitch the band''s most accessible hard-rock material.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 67,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-062';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.slizovica.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-062';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/slizovica/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-062';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Horkyze Slize / festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/slizovica/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-062'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Official social/contact route; curated lineup', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-062'
  AND festival_editions.edition_year = 2027;

-- SNS-063: Steed Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Kaloyanova Fortress / Fest Bulgaria partners' ORDER BY id LIMIT 1),
  'Steed Rock Fest',
  'Arbanasi / Veliko Tarnovo',
  'classic rock, hard rock',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/kaloianovakrepost/',
  'https://www.facebook.com/vt.kmet/videos/steed-rock-fest-%D0%BD%D0%BE%D0%B2%D0%B8%D1%8F%D1%82-%D1%80%D0%BE%D0%BA-%D1%84%D0%B5%D1%81%D1%82%D0%B8%D0%B2%D0%B0%D0%BB-%D0%BD%D0%B0-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE-%D1%82%D1%8A%D1%80%D0%BD%D0%BE%D0%B2%D0%BE%D0%BD%D0%B0-3-4-%D0%B8-5-%D1%8E%D0%BB%D0%B8-%D0%BA%D1%80%D0%B0%D0%B9-%D0%BA%D0%B0%D0%BB%D0%BE%D1%8F%D0%BD%D0%BE/1536505494527382/',
  'A/B target if renewed; strong classic-hard-rock audience but the event is new and continuity is not yet proven.',
  'SNS-063',
  'private open-air festival at Kaloyanova Fortress',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '3-5 July 2026', 'September-November if renewed', NULL
FROM festivals WHERE external_id = 'SNS-063';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 67,
  21, 3, 12.6,
  6, 6.4, 10,
  8, 'B', 'Low',
  'Verified', 'unconfirmed',
  'Ahat, Signal, Elite', 'A/B target if renewed; strong classic-hard-rock audience but the event is new and continuity is not yet proven.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 68,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-063';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/vt.kmet/videos/steed-rock-fest-%D0%BD%D0%BE%D0%B2%D0%B8%D1%8F%D1%82-%D1%80%D0%BE%D0%BA-%D1%84%D0%B5%D1%81%D1%82%D0%B8%D0%B2%D0%B0%D0%BB-%D0%BD%D0%B0-%D0%B2%D0%B5%D0%BB%D0%B8%D0%BA%D0%BE-%D1%82%D1%8A%D1%80%D0%BD%D0%BE%D0%B2%D0%BE%D0%BD%D0%B0-3-4-%D0%B8-5-%D1%8E%D0%BB%D0%B8-%D0%BA%D1%80%D0%B0%D0%B9-%D0%BA%D0%B0%D0%BB%D0%BE%D1%8F%D0%BD%D0%BE/1536505494527382/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-063';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/kaloianovakrepost/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-063';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Kaloyanova Fortress / Fest Bulgaria partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/kaloianovakrepost/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-063'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'DM Kaloyanova Fortress or Fest Bulgaria with EPK and ask whether a 2027 edition is planned.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-063'
  AND festival_editions.edition_year = 2027;

-- SNS-064: Angelus Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Angelus Fest team' ORDER BY id LIMIT 1),
  'Angelus Fest',
  'Banska Bystrica',
  'metal, hard rock, progressive metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/AngelusFest/',
  'https://www.facebook.com/AngelusFest/',
  'A/B-priority club target, particularly useful in a Slovakia mini-tour.',
  'SNS-064',
  'club/urban metal festival',
  'small'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring edition; latest date requires confirmation', 'Rolling, ideally 6-9 months ahead', NULL
FROM festivals WHERE external_id = 'SNS-064';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 67,
  21, 12, 11.1,
  6, 4, 7.2,
  5.6, 'B', 'Low',
  'Verified', 'Regional international acts possible',
  NULL, 'A/B-priority club target, particularly useful in a Slovakia mini-tour.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 69,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-064';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/AngelusFest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-064';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Angelus Fest team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/AngelusFest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-064'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-064'
  AND festival_editions.edition_year = 2027;

-- SNS-065: Motozraz Sveta Motocyklov
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Svet Motocyklov rally team' ORDER BY id LIMIT 1),
  'Motozraz Sveta Motocyklov',
  'Eastern Slovakia / Zemplinska Sirava',
  'hard rock, rock, metal, biker rock',
  'medium',
  'https://www.svetmotocyklov.sk/',
  NULL,
  'https://www.facebook.com/svetmotocyklov/',
  'https://www.svetmotocyklov.sk/',
  'A-priority biker target and natural audience match.',
  'SNS-065',
  'motorcycle rally with major live-music programme',
  'medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected; unannounced',
  'Annual August rally', 'September-November', NULL
FROM festivals WHERE external_id = 'SNS-065';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 67,
  21, 3, 12.6,
  9, 6.4, 7.2,
  7.6, NULL, 'Medium',
  'Verified', 'Possible; programme commonly includes Czech/Slovak headliners',
  NULL, 'A-priority biker target and natural audience match.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 70,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-065';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.svetmotocyklov.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-065';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/svetmotocyklov/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-065';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Svet Motocyklov rally team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/svetmotocyklov/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-065'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Official website/social DM; ask specifically for concert-program booking', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-065'
  AND festival_editions.edition_year = 2027;

-- SNS-066: Tanec Slnka
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Tanec Slnka team' ORDER BY id LIMIT 1),
  'Tanec Slnka',
  'Plavecky Stvrtok / changing venue',
  'rock, hard rock, metal',
  'small-medium',
  'https://www.tanecslnka.sk/',
  NULL,
  'https://www.facebook.com/tanecslnka/',
  'https://www.tanecslnka.sk/',
  'A/B-priority biker event; verify location and international-act budget.',
  'SNS-066',
  'motorcycle festival and rock concerts',
  'small-medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced; verify before pitching',
  'Recurring summer motorcycle event; venue/date may change', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-066';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 67,
  21, 3, 12.6,
  9, 6.4, 7.2,
  7.6, NULL, 'Medium',
  'Verified', 'Unclear',
  NULL, 'A/B-priority biker event; verify location and international-act budget.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 71,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-066';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.tanecslnka.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-066';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/tanecslnka/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-066';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Tanec Slnka team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/tanecslnka/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-066'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact organizers by official social channels', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-066'
  AND festival_editions.edition_year = 2027;

-- SNS-067: River Party
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'River Party Reboot' ORDER BY id LIMIT 1),
  'River Party',
  'Nestorio, Kastoria',
  'Greek rock, alternative, pop, hip-hop, folk',
  'medium-large',
  'https://riverparty.org/',
  'https://www.instagram.com/riverpartyreboot/',
  'https://www.facebook.com/RiverPartyReboot/',
  'https://www.facebook.com/RiverPartyReboot/',
  'B/C-priority. Useful only with a wider northern-Greece route; sell melodic accessibility and regional draw, not niche power-metal credentials alone.',
  'SNS-067',
  'Riverside camping multi-genre festival',
  'medium-large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; 2027 dates not announced',
  '23-26 July 2026', 'Autumn to early winter for the following July.', NULL
FROM festivals WHERE external_id = 'SNS-067';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 66,
  15, 7.5, 7.5,
  9, 8, 8.6,
  10, NULL, 'Medium',
  'Verified', 'Limited; predominantly Greek programme',
  'Greek mainstream and alternative acts', 'B/C-priority. Useful only with a wider northern-Greece route; sell melodic accessibility and regional draw, not niche power-metal credentials alone.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 72,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-067';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/RiverPartyReboot/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-067';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://riverparty.org/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-067';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'River Party Reboot', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/riverpartyreboot/',
  'https://www.facebook.com/RiverPartyReboot/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-067'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated programme; use the official page/site contact to pitch for a rock-stage or early-evening slot.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-067'
  AND festival_editions.edition_year = 2027;

-- SNS-068: Open Road Days / Harley-Davidson Budapest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Harley-Davidson Budapest / Open Road' ORDER BY id LIMIT 1),
  'Open Road Days / Harley-Davidson Budapest',
  'Budapest',
  'classic rock, hard rock, blues rock',
  'small-medium depending edition',
  'https://openroad.hu/',
  'https://www.instagram.com/harleydavidsonbudapest/',
  'https://www.facebook.com/HarleyDavidsonBudapest/',
  'https://openroad.hu/',
  'A-priority audience fit, but the exact recurring event name/date must be confirmed first.',
  'SNS-068',
  'motorcycle gathering with live rock programme',
  'small-medium'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed; organizer lead rather than confirmed festival',
  'recurring warm-season event; exact 2026 festival format not verified', 'Autumn-winter for summer rider events.', NULL
FROM festivals WHERE external_id = 'SNS-068';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  21, 1.5, 12.6,
  9, 6.4, 8,
  7.6, 'B', 'Low',
  'Verified', 'Not verified for the current format.',
  NULL, 'A-priority audience fit, but the exact recurring event name/date must be confirmed first.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 73,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-068';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://openroad.hu/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-068';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/HarleyDavidsonBudapest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-068';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Harley-Davidson Budapest / Open Road', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/harleydavidsonbudapest/',
  'https://www.facebook.com/HarleyDavidsonBudapest/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-068'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact the dealership/event team through the official site or social DM and request the live-music programmer.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-068'
  AND festival_editions.edition_year = 2027;

-- SNS-069: Bears Moto Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Moto Klub Bears Macedonia / Bears Kumanovo' ORDER BY id LIMIT 1),
  'Bears Moto Rock Festival',
  'Kumanovo (Adzi Tepe sports airfield)',
  'rock, hard rock, heavy metal, biker rock',
  'small-medium',
  NULL,
  'https://www.instagram.com/mk_bears_macedonia/',
  'https://www.facebook.com/bears.kumanovo/',
  'https://www.facebook.com/bears.kumanovo/posts/%EF%B8%8F-bears-moto-rock-festival-%D0%BA%D1%83%D0%BC%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE-12-13-%D0%B8-14-%D1%82%D0%B8-%D1%98%D1%83%D0%BD%D0%B8-2026-%D0%BB%D0%BE%D0%BA%D0%B0%D1%86%D0%B8%D1%98%D0%B0-%D1%81%D0%BF%D0%BE%D1%80%D1%82%D1%81%D0%BA%D0%B8-%D0%B0%D0%B5/1482240140368709/',
  'Top-priority North Macedonian lead: direct genre and biker-audience fit, close enough to combine with Sofia/Niš/Skopje.',
  'SNS-069',
  'Motorcycle club open-air rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; active',
  '12-14 June 2026', 'September-January recommended', NULL
FROM festivals WHERE external_id = 'SNS-069';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  21, 3, 12.6,
  6, 6.4, 9.4,
  7.6, NULL, 'Medium',
  'Verified', 'true',
  'Area, AC/DI tribute', 'Top-priority North Macedonian lead: direct genre and biker-audience fit, close enough to combine with Sofia/Niš/Skopje.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 74,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-069';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/bears.kumanovo/posts/%EF%B8%8F-bears-moto-rock-festival-%D0%BA%D1%83%D0%BC%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE-12-13-%D0%B8-14-%D1%82%D0%B8-%D1%98%D1%83%D0%BD%D0%B8-2026-%D0%BB%D0%BE%D0%BA%D0%B0%D1%86%D0%B8%D1%98%D0%B0-%D1%81%D0%BF%D0%BE%D1%80%D1%82%D1%81%D0%BA%D0%B8-%D0%B0%D0%B5/1482240140368709/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-069';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/mk_bears_macedonia/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-069';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Moto Klub Bears Macedonia / Bears Kumanovo', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/mk_bears_macedonia/',
  'https://www.facebook.com/bears.kumanovo/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-069'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Send EPK by Facebook/Instagram DM and ask for the 2027 live-music booking contact. A separate public group post displayed balkanfolkfest1@gmail.com and +389 77 902 320, but ownership/relevance to booking should be confirmed before use.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-069'
  AND festival_editions.edition_year = 2027;

-- SNS-070: Ustrzycki Festiwal Rockowy
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Ustrzycki Festiwal Rockowy / local partners' ORDER BY id LIMIT 1),
  'Ustrzycki Festiwal Rockowy',
  'Ustrzyki Dolne',
  'rock, hard rock, punk, classic rock',
  'small-medium regional',
  NULL,
  'https://www.instagram.com/ustrzycki_festiwal_rockowy/',
  'https://www.facebook.com/61574652666576/posts/122162355338821755/',
  'https://www.facebook.com/61574652666576/posts/122162355338821755/',
  'High musical fit for melodic heavy/classic metal; town festival profile is realistic, though the 2026 bill was strongly Polish-language and locally curated.',
  'SNS-070',
  'municipal/town rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; active in 2026',
  '14-15 August 2026', 'Recommended September-November 2026 for 2027', NULL
FROM festivals WHERE external_id = 'SNS-070';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  25, 1.5, 12.6,
  6, 7.2, 6,
  8, NULL, 'Medium',
  'Verified', 'not verified',
  'KSU, Grzegorz Kupczyk, Orkiestra Dorosłych Dzieci, Raya Bell', 'High musical fit for melodic heavy/classic metal; town festival profile is realistic, though the 2026 bill was strongly Polish-language and locally curated.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 75,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-070';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/61574652666576/posts/122162355338821755/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-070';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/ustrzycki_festiwal_rockowy/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-070';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Ustrzycki Festiwal Rockowy / local partners', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/ustrzycki_festiwal_rockowy/',
  'https://www.facebook.com/61574652666576/posts/122162355338821755/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-070'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'No public form found; approach the official Instagram/Facebook account with EPK and ask for 2027 booking contact.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-070'
  AND festival_editions.edition_year = 2027;

-- SNS-071: Bucovina Motorfest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Bucovina Motorfest/local motorcycle organizers' ORDER BY id LIMIT 1),
  'Bucovina Motorfest',
  'Suceava',
  'rock, hard rock, metal',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/BucovinaMotorfest/',
  'https://www.facebook.com/BucovinaMotorfest/',
  'Potential B target; good audience type but current operating status/contact needs confirmation.',
  'SNS-071',
  'motorcycle festival with rock/metal concerts',
  'small-medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Recent summer editions; no reliably indexed 2026 date found in this pass', 'Autumn-winter if renewed', NULL
FROM festivals WHERE external_id = 'SNS-071';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  21, 3, 12.6,
  6, 6.4, 9,
  7.6, 'B', 'Low',
  'Verified', 'unconfirmed',
  NULL, 'Potential B target; good audience type but current operating status/contact needs confirmation.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 76,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-071';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/BucovinaMotorfest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-071';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Bucovina Motorfest/local motorcycle organizers', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/BucovinaMotorfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-071'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM with EPK and routing proposal; confirm 2027 edition first.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-071'
  AND festival_editions.edition_year = 2027;

-- SNS-072: Maris Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Maris Fest/motorcycle community organizers' ORDER BY id LIMIT 1),
  'Maris Fest',
  'Târgu Mureș',
  'rock, hard rock, heavy metal',
  'medium',
  NULL,
  NULL,
  'https://www.facebook.com/MarisFest/',
  'https://www.facebook.com/MarisFest/',
  'Potential A/B moto target, but requires organizer response before prioritization.',
  'SNS-072',
  'motorcycle festival with live rock concerts',
  'medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Recent recurring summer editions; 2026 details not independently confirmed in this pass', 'Autumn-winter if renewed', NULL
FROM festivals WHERE external_id = 'SNS-072';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  21, 3, 12.6,
  6, 6.4, 9,
  7.6, 'B', 'Low',
  'Verified', 'unconfirmed',
  NULL, 'Potential A/B moto target, but requires organizer response before prioritization.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 77,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-072';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/MarisFest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-072';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Maris Fest/motorcycle community organizers', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/MarisFest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-072'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM requesting live-music booking contact and next-edition status.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-072'
  AND festival_editions.edition_year = 2027;

-- SNS-073: Arsenal Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Arsenal Fest' ORDER BY id LIMIT 1),
  'Arsenal Fest',
  'Kragujevac',
  'rock, metal, alternative, hip-hop, electronic',
  'medium-large',
  'https://arsenalfest.rs/',
  'https://www.instagram.com/arsenalfest/',
  'https://www.facebook.com/arsenalfest/',
  'https://arsenalfest.rs/',
  'Stretch target rather than small festival. High profile value but more competitive; propose early-day/support slot.',
  'SNS-073',
  'Multi-stage urban music festival',
  'medium-large'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not confirmed in the reviewed sources',
  'Annual early-summer festival; active through 2026', 'September-November recommended', NULL
FROM festivals WHERE external_id = 'SNS-073';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 66,
  15, 3, 12,
  9, 8, 9.4,
  10, 'B', 'Medium',
  'Verified', 'true',
  'international and regional acts, Lavina', 'Stretch target rather than small festival. High profile value but more competitive; propose early-day/support slot.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 78,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-073';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://arsenalfest.rs/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-073';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/arsenalfest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-073';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Arsenal Fest', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/arsenalfest/',
  'https://www.facebook.com/arsenalfest/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-073'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional curated booking; use official contact/social channels with full EPK and support-stage proposal.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-073'
  AND festival_editions.edition_year = 2027;

-- SNS-074: Blokstok Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Blokstok Festival team' ORDER BY id LIMIT 1),
  'Blokstok Festival',
  'Novi Sad',
  'rock, hard rock, alternative, metal',
  'medium',
  NULL,
  NULL,
  'https://www.facebook.com/Blokstokfestival/',
  'https://www.facebook.com/Blokstokfestival/',
  'Very high stylistic fit and useful audience size. Worth a direct guest-band pitch for 2027.',
  'SNS-074',
  'Free urban park rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; returned in 2026 after a one-year pause',
  '4 July 2026', 'September-January recommended', NULL
FROM festivals WHERE external_id = 'SNS-074';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  21, 3, 12.6,
  6, 6.4, 9.4,
  7.6, NULL, 'Medium',
  'Verified', 'true',
  'Divlje Jagode, Pero Defformero', 'Very high stylistic fit and useful audience size. Worth a direct guest-band pitch for 2027.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 79,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-074';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/Blokstokfestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-074';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.vojvodjanski.com/dunavtelevizija/autor/redakcija-dunav-tv', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-074';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Blokstok Festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/Blokstokfestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-074'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; submit through official Facebook page and ask for production/booking email.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-074'
  AND festival_editions.edition_year = 2027;

-- SNS-075: Festival Srpskog Podzemlja
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Festival Srpskog Podzemlja with SKC Novi Sad / Fabrika' ORDER BY id LIMIT 1),
  'Festival Srpskog Podzemlja',
  'Novi Sad',
  'heavy metal, black metal, death metal, doom metal, underground metal',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/FestivalSrpskogPodzemlja.official/',
  'https://www.facebook.com/FestivalSrpskogPodzemlja.official/',
  'Medium fit: credible metal audience but much more extreme than Saints ''N'' Sinners. Pitch only with a heavier set/profile.',
  'SNS-075',
  'Indoor underground metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; active',
  '16-17 October 2026 (12th edition, announced)', 'Immediately for future edition; typical booking likely spring-summer', NULL
FROM festivals WHERE external_id = 'SNS-075';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 66,
  21, 3, 12.6,
  6, 6.4, 9.4,
  7.6, NULL, 'Medium',
  'Verified', 'true',
  'The Stone, Worm Man', 'Medium fit: credible metal audience but much more extreme than Saints ''N'' Sinners. Pitch only with a heavier set/profile.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 80,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-075';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/FestivalSrpskogPodzemlja.official/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-075';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/crnoslovlje/videos/festival-srpskog-podzemlja-xi23-24-i-25-oktobar-skcns-fabrikamusic-worm-man-nast/809806545151736/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-075';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Festival Srpskog Podzemlja with SKC Novi Sad / Fabrika', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/FestivalSrpskogPodzemlja.official/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-075'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated underground lineup. Send EPK by official Facebook DM; emphasize heavier songs and regional availability.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-075'
  AND festival_editions.edition_year = 2027;

-- SNS-076: Metal Escalation Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Metal Escalation' ORDER BY id LIMIT 1),
  'Metal Escalation Festival',
  'Vienna',
  'heavy metal, thrash metal, death metal, metalcore',
  'small-medium club festival',
  'https://www.metal-escalation.at/',
  NULL,
  'https://www.facebook.com/metalescalation/',
  'https://www.metal-escalation.at/',
  'Potential B-priority based on format, but currently an unconfirmed lead.',
  'SNS-076',
  'indoor independent metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed; validation required before outreach',
  'most recent edition/activity not reliably verified from the inaccessible official site', 'Unknown.', NULL
FROM festivals WHERE external_id = 'SNS-076';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 65,
  21, 1.5, 12.6,
  9, 6.4, 6.8,
  7.6, 'B', 'Low',
  'Verified', 'Not freshly verified.',
  NULL, 'Potential B-priority based on format, but currently an unconfirmed lead.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 81,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-076';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.metal-escalation.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-076';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/metalescalation/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-076';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Metal Escalation', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/metalescalation/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-076'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'First ask via the official Facebook page whether a 2027 edition is planned; request the booking contact only after confirmation.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-076'
  AND festival_editions.edition_year = 2027;

-- SNS-077: Ardas Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Ardas Festival with Municipality of Orestiada and local partners' ORDER BY id LIMIT 1),
  'Ardas Festival',
  'Kastanies, Orestiada',
  'Greek rock, alternative rock, pop, folk, hip-hop',
  'medium-large',
  'https://ardasfestival.gr/',
  'https://www.instagram.com/ardasfestival/',
  'https://www.facebook.com/ardasfestival/',
  'https://ardasfestival.gr/',
  'B-priority. Not metal-specific, but excellent regional/cross-border story and municipal format; tailor the pitch to a rock night rather than the full festival identity.',
  'SNS-077',
  'Municipal/border-region riverside multi-genre festival',
  'medium-large'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected recurring; dates not announced',
  '30 July-2 August 2026 (30th anniversary)', 'September-January for the next summer programme.', NULL
FROM festivals WHERE external_id = 'SNS-077';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 65,
  15, 1.5, 7.5,
  13.5, 8.8, 8.6,
  10, NULL, 'High',
  'Verified', 'Not a consistent feature; cross-border location makes a Turkish guest proposal plausible',
  'Koza Mostra, Jade Vine, The Howling Fiends, Greek mainstream artists', 'B-priority. Not metal-specific, but excellent regional/cross-border story and municipal format; tailor the pitch to a rock night rather than the full festival identity.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 82,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-077';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://ardasfestival.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-077';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://ardasfestival.gr/schedule/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-077';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Ardas Festival with Municipality of Orestiada and local partners', 'Festival booking contact',
  'info@ardasfestival.gr', '+30 25520 27272', 'https://www.instagram.com/ardasfestival/',
  'https://www.facebook.com/ardasfestival/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-077'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Email programme proposal to the official address, asking for the artistic director; include a shorter crossover/hard-rock set option.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-077'
  AND festival_editions.edition_year = 2027;

-- SNS-078: D Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Password Production' ORDER BY id LIMIT 1),
  'D Festival',
  'Štip',
  'rock, alternative, punk, electronic, hip-hop',
  'medium-large',
  'https://dfestival.mk/',
  'https://www.instagram.com/dfestivalmk/',
  'https://www.facebook.com/dfestivalmk/',
  'https://password.mk/',
  'Stretch target: broad alternative bill rather than metal-specific. Career value is good, but competition and production level are higher.',
  'SNS-078',
  'Multi-stage open-air music festival',
  'medium-large'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced',
  '26-28 June 2026 (16th edition)', 'September-November recommended', NULL
FROM festivals WHERE external_id = 'SNS-078';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 65,
  15, 3, 7.5,
  12, 8, 9.4,
  10, NULL, 'High',
  'Verified', 'true',
  'Manu Chao, Dubioza Kolektiv, S.A.R.S., Mile Kekin', 'Stretch target: broad alternative bill rather than metal-specific. Career value is good, but competition and production level are higher.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 83,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-078';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://password.mk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-078';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://dfestival.mk/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-078';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Password Production', 'Festival booking contact',
  'info@password.mk', NULL, 'https://www.instagram.com/dfestivalmk/',
  'https://www.facebook.com/dfestivalmk/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-078'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Professional curated booking. Email Password Production with a concise EPK and proposal for a rock-stage/support slot.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-078'
  AND festival_editions.edition_year = 2027;

-- SNS-079: Dacicky Rockfest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local/private organizer' ORDER BY id LIMIT 1),
  'Dacicky Rockfest',
  'Dacice',
  'Czech rock, hard rock, metal',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/dacickyrockfest/',
  'https://www.facebook.com/dacickyrockfest/',
  'B-priority if revived; good stylistic fit and small-town profile.',
  'SNS-079',
  'town rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring local festival; latest edition/date needs confirmation', 'Autumn if active', NULL
FROM festivals WHERE external_id = 'SNS-079';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 64,
  21, 3, 12.6,
  6, 7.2, 6.8,
  7.6, 'B', 'Low',
  'Verified', 'Unclear',
  NULL, 'B-priority if revived; good stylistic fit and small-town profile.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 84,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-079';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/dacickyrockfest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-079';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Local/private organizer', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/dacickyrockfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-079'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM; first ask whether a 2027 edition is planned', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-079'
  AND festival_editions.edition_year = 2027;

-- SNS-080: Iron Road for Children / Iron Road to Nova Rock
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Iron Road for Children association' ORDER BY id LIMIT 1),
  'Iron Road for Children / Iron Road to Nova Rock',
  'Leoben',
  'rock, hard rock, metal, Austrian rock',
  'medium-large public event, but accessible newcomer/contest stage',
  'https://irfc.at/',
  'https://www.instagram.com/irfcfestival/',
  'https://www.facebook.com/irfcfestival/',
  'https://irfc.at/',
  'Top A-priority audience and excellent career upside, but eligibility for the contest needs direct written confirmation.',
  'SNS-080',
  'free charity bike, Vespa and US-car festival with rock/metal competition stage',
  'medium-large'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'festival is active; 2027 competition call not yet announced',
  '20-21 June, latest programme page; active competition linked to Nova Rock 2026', 'Monitor autumn 2026 through early spring 2027; exact next call not published.', NULL
FROM festivals WHERE external_id = 'SNS-080';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 1, 63,
  21, 1.5, 7.5,
  9, 7, 6.8,
  10, NULL, 'Medium',
  'Verified', 'Main festival has hosted varied acts; contest nationality rules are not stated on the programme page.',
  'Sergeant Steel, Vinegar Hill, Silenzer, Alkbottle, Opus', 'Top A-priority audience and excellent career upside, but eligibility for the contest needs direct written confirmation.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 85,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-080';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://irfc.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-080';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://irfc.at/programm/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-080';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Iron Road for Children association', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/irfcfestival/',
  'https://www.facebook.com/irfcfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-080'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Apply to the Iron Road to Nova Rock stage when the annual call opens; young/talented rock and metal bands compete before a jury for a Nova Rock slot. Confirm whether non-Austrian established bands are eligible. A separate guest-slot pitch can be made via official channels.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-080'
  AND festival_editions.edition_year = 2027;

-- SNS-081: Motonalet Nikolcice
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Motonalet team/local motorcycle community' ORDER BY id LIMIT 1),
  'Motonalet Nikolcice',
  'Nikolcice',
  'hard rock, rock, metal',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/motonalet/',
  'https://www.facebook.com/motonalet/',
  'A/B-priority small biker target; propose a routed all-in price.',
  'SNS-081',
  'motorcycle meeting and rock concerts',
  'small-medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced; recurring',
  'Annual summer rally', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-081';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 63,
  21, 3, 12.6,
  6, 6.4, 6.8,
  7.6, NULL, 'Medium',
  'Verified', 'Unclear',
  NULL, 'A/B-priority small biker target; propose a routed all-in price.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 86,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-081';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/motonalet/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-081';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Motonalet team/local motorcycle community', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/motonalet/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-081'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM to rally organizer', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-081'
  AND festival_editions.edition_year = 2027;

-- SNS-082: Ziria Music Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Ziria Music Festival team' ORDER BY id LIMIT 1),
  'Ziria Music Festival',
  'Kato Trikala Korinthias / Mount Ziria',
  'rock, stoner rock, alternative, punk, electronic, hip-hop',
  'small-medium',
  NULL,
  'https://www.instagram.com/ziriafestival/',
  'https://www.facebook.com/ziriafestival/',
  'https://www.facebook.com/ziriafestival/',
  'B/C-priority. Attractive small festival but stylistically broad and less metal-focused.',
  'SNS-082',
  'Free independent mountain/camping festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed; monitor after an irregular recent history',
  '28-30 August 2025; 2026 edition not verified', 'Ask in winter/spring if a 2027 edition is planned.', NULL
FROM festivals WHERE external_id = 'SNS-082';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 63,
  15, 7.5, 12.6,
  6, 6.4, 7,
  8, 'B', 'Low',
  'Verified', 'Limited/unclear',
  'Nightstalker, Thrax Punks, The Overjoyed, Fundracar', 'B/C-priority. Attractive small festival but stylistically broad and less metal-focused.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 87,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-082';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/ziriafestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-082';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.setlist.fm/festival/2025/ziria-music-festival-2025-73d53e91.html', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-082';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Ziria Music Festival team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/ziriafestival/',
  'https://www.facebook.com/ziriafestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-082'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Official-page DM; pitch a melodic hard-rock set rather than a pure metal package. No public form found.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-082'
  AND festival_editions.edition_year = 2027;

-- SNS-083: Moto Rock Festiwal Tuchów
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Tuchów cultural/municipal partners' ORDER BY id LIMIT 1),
  'Moto Rock Festiwal Tuchów',
  'Tuchów',
  'rock, hard rock, motorcycle culture',
  'small local/municipal',
  'https://www.tuchow.pl/moto-rock-festiwal/',
  NULL,
  NULL,
  'https://www.tuchow.pl/moto-rock-festiwal/',
  'Very high audience/style fit and a realistic small municipal target. Contact email is the public cultural-centre/library address, not a verified booking inbox; ask to be routed correctly.',
  'SNS-083',
  'municipal motorcycle rock festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; recurring municipal event',
  '20 June 2026', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-083';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 63,
  21, 1.5, 11.1,
  13.5, 4.8, 6,
  5, NULL, 'High',
  'Verified', 'not verified',
  NULL, 'Very high audience/style fit and a realistic small municipal target. Contact email is the public cultural-centre/library address, not a verified booking inbox; ask to be routed correctly.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 88,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-083';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.tuchow.pl/moto-rock-festiwal/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-083';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://biblioteka.tuchow.pl/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-083';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Tuchów cultural/municipal partners', 'Festival booking contact',
  'biblioteka@tuchow.pl', '+48 14 652 50 08', NULL,
  NULL, 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-083'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact the cultural institution housed at Dom Kultury and request referral to the Moto Rock programmer; no open form found.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-083'
  AND festival_editions.edition_year = 2027;

-- SNS-084: Panhellenic Motorcycle Federation annual gathering (MOTOE)
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Motorcycle Federation of Greece / host clubs' ORDER BY id LIMIT 1),
  'Panhellenic Motorcycle Federation annual gathering (MOTOE)',
  'Various / national',
  'rock cover bands, Greek rock, live entertainment varies',
  'medium',
  'https://motoe.org/',
  NULL,
  'https://www.facebook.com/MOTOE.Hellas/',
  'https://motoe.org/',
  'Lead-generation target rather than a verified festival booking. Useful for uncovering small motor-club events, but not yet an A-list contact without a confirmed host and music budget.',
  'SNS-084',
  'National motorcycle gathering with variable live-music programme',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed; location and programme rotate',
  'Annual summer gathering; a specific 2026 rock programme was not reliably verified', 'After host location announcement, usually several months before summer.', NULL
FROM festivals WHERE external_id = 'SNS-084';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 62,
  15, 3, 12.6,
  9, 6.4, 8.6,
  7.6, 'B', 'Low',
  'Verified', 'Unclear and varies by host',
  'local rock bands; programme varies annually', 'Lead-generation target rather than a verified festival booking. Useful for uncovering small motor-club events, but not yet an A-list contact without a confirmed host and music budget.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 89,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-084';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://motoe.org/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-084';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/MOTOE.Hellas/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-084';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Motorcycle Federation of Greece / host clubs', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/MOTOE.Hellas/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-084'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'First ask the federation which local club is hosting the 2027 gathering and who books live music; then send a routed all-in proposal to that club.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-084'
  AND festival_editions.edition_year = 2027;

-- SNS-085: Rockowania (Podlaski Instytut Kultury)
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Podlaski Instytut Kultury w Białymstoku – Dział Spodki' ORDER BY id LIMIT 1),
  'Rockowania (Podlaski Instytut Kultury)',
  'Białystok',
  'rock, hard rock, metal',
  'small regional showcase',
  'https://pikpodlaskie.pl/event/rockowania-2026/',
  NULL,
  NULL,
  'https://pikpodlaskie.pl/event/rockowania-2026/',
  'Contact is excellent, but competition eligibility for an established Turkish band is doubtful. Ask about guest performance or international showcase exchange.',
  'SNS-085',
  'regional rock-band competition/showcase',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; recurring',
  '2026 edition active (exact event date not captured)', 'Check with organizer for next call', NULL
FROM festivals WHERE external_id = 'SNS-085';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 62,
  21, 1.5, 11.1,
  13.5, 4, 6,
  5, NULL, 'Medium',
  'Verified', 'not verified; likely regional/Polish eligibility',
  NULL, 'Contact is excellent, but competition eligibility for an established Turkish band is doubtful. Ask about guest performance or international showcase exchange.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 90,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-085';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://pikpodlaskie.pl/event/rockowania-2026/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-085';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Podlaski Instytut Kultury w Białymstoku – Dział Spodki', 'Festival booking contact',
  'rockowania@pikpodlaskie.pl', '+48 85 869 90 50', NULL,
  NULL, 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-085'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Formal application package via the organizer''s published rules/forms; email rockowania@pikpodlaskie.pl for eligibility.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-085'
  AND festival_editions.edition_year = 2027;

-- SNS-086: South Moravia Metal Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Independent promoter' ORDER BY id LIMIT 1),
  'South Moravia Metal Fest',
  'Brno',
  'heavy metal, power metal, hard rock',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/SouthMoraviaMetalFest/',
  'https://www.facebook.com/SouthMoraviaMetalFest/',
  'A-priority club-scale genre fit; useful for pairing with Vienna/Bratislava dates.',
  'SNS-086',
  'club/indoor mini-festival',
  'small'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring autumn/winter metal event; current edition needs confirmation', 'Rolling; 6-9 months ahead', NULL
FROM festivals WHERE external_id = 'SNS-086';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 61,
  25, 3, 11.1,
  6, 4, 6.8,
  5, 'B', 'Low',
  'Verified', 'Regional cross-border acts possible',
  NULL, 'A-priority club-scale genre fit; useful for pairing with Vienna/Bratislava dates.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 91,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-086';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/SouthMoraviaMetalFest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-086';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Independent promoter', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/SouthMoraviaMetalFest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-086'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-086'
  AND festival_editions.edition_year = 2027;

-- SNS-087: Strumica Open Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Strumica Open Festival / Municipality of Strumica partners' ORDER BY id LIMIT 1),
  'Strumica Open Festival',
  'Strumica',
  'rock, pop, electronic, regional mainstream',
  'medium municipal festival',
  NULL,
  NULL,
  'https://www.facebook.com/StrumicaOpenFestival/',
  'https://www.facebook.com/StrumicaOpenFestival/',
  'Medium/low stylistic fit because of broad mainstream programming, but useful for a municipal international-night pitch.',
  'SNS-087',
  'Municipal summer city festival with concerts',
  'medium'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring brand; 2027 programme not announced',
  'Annual summer event; current 2026 rock-specific programme not verified in accessible sources', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-087';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 61,
  15, 3, 12.6,
  6, 7.2, 9.4,
  7.6, NULL, 'Medium',
  'Verified', 'true',
  NULL, 'Medium/low stylistic fit because of broad mainstream programming, but useful for a municipal international-night pitch.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 92,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-087';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/StrumicaOpenFestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-087';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.chasingthedonkey.com/festivals-in-macedonia-travel-blog/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-087';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Strumica Open Festival / Municipality of Strumica partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/StrumicaOpenFestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-087'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the official festival page to identify the current producer before submitting EPK; no reliable direct booking email was found.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-087'
  AND festival_editions.edition_year = 2027;

-- SNS-088: Kovinski Rok Festival (KRF)
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Udruženje građana Contra Margum with local cultural partners' ORDER BY id LIMIT 1),
  'Kovinski Rok Festival (KRF)',
  'Kovin',
  'rock, hard rock, metal',
  'small',
  'https://www.kovin.rs/2026/08/31/kovinski-rok-festival-2026-40-godina-krf-a/',
  NULL,
  NULL,
  'https://www.kovin.rs/2026/08/31/kovinski-rok-festival-2026-40-godina-krf-a/',
  'Musically suitable but highly local and charity-oriented; best only if another Vojvodina date covers travel.',
  'SNS-088',
  'Community/charity rock festival',
  'small'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; recurring but format varies',
  '5 September 2026 (40-year commemoration)', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-088';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 61,
  21, 3, 11.1,
  4.5, 3, 9.4,
  9, NULL, 'Low',
  'Verified', 'false',
  'Sumatra, Twillight, VIS Ita Rina, CounterIgnition, Enjoy Sarma', 'Musically suitable but highly local and charity-oriented; best only if another Vojvodina date covers travel.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 93,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-088';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.kovin.rs/2026/08/31/kovinski-rok-festival-2026-40-godina-krf-a/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-088';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://balkanrock.com/vesti/najave/kovinski-rok-festival-obelezava-40-godina-postojanja/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-088';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'No public form. Approach Contra Margum through the municipality/cultural centre and provide a low-overhead routed offer.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-088'
  AND festival_editions.edition_year = 2027;

-- SNS-089: Rock Village
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock Village association/local community' ORDER BY id LIMIT 1),
  'Rock Village',
  'Banatski Sokolac',
  'rock, reggae, blues, funk, alternative',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/rock.village/',
  'https://www.facebook.com/rock.village/',
  'Good small-town target, although the bill is broader than metal. A melodic 45-minute festival set is appropriate.',
  'SNS-089',
  'Village open-air independent festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; long-running annual event',
  '8-10 August 2026', 'October-February recommended for the following August', NULL
FROM festivals WHERE external_id = 'SNS-089';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 61,
  15, 3, 12.6,
  6, 7.2, 9.4,
  7.6, NULL, 'Medium',
  'Verified', 'true',
  'regional and Serbian original bands', 'Good small-town target, although the bill is broader than metal. A melodic 45-minute festival set is appropriate.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 94,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-089';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rock.village/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-089';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://urbanbug.net/desavanje/rock-village-2026-08-08', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-089';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock Village association/local community', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/rock.village/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-089'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated lineup; send EPK by Facebook DM and ask for the programming contact.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-089'
  AND festival_editions.edition_year = 2027;

-- SNS-090: Forever Among the Stars
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Max Horse Base' ORDER BY id LIMIT 1),
  'Forever Among the Stars',
  'Nova Zagora',
  'rock, hard rock',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/KonnaBazaMaksNovaZagora/',
  'https://rocklive.bg/?lang=en',
  'B target if repeated; very small private event, best attached to another Bulgarian booking.',
  'SNS-090',
  'private horse-base rock festival/concert',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '22 August 2026', 'Autumn-winter if renewed', NULL
FROM festivals WHERE external_id = 'SNS-090';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 60,
  21, 3, 11.1,
  6, 4, 10,
  5, 'B', 'Low',
  'Verified', 'unconfirmed',
  NULL, 'B target if repeated; very small private event, best attached to another Bulgarian booking.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 95,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-090';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rocklive.bg/?lang=en', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-090';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/KonnaBazaMaksNovaZagora/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-090';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Max Horse Base', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/KonnaBazaMaksNovaZagora/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-090'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct Facebook DM to venue; ask whether the series will return and pitch a routed date.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-090'
  AND festival_editions.edition_year = 2027;

-- SNS-091: Manzul Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Manzul Rock Fest team' ORDER BY id LIMIT 1),
  'Manzul Rock Fest',
  'Panagyurski kolonii',
  'rock, hard rock, metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/p/%D0%9C%D0%B0%D0%BD%D0%B7%D1%83%D0%BB-%D0%A0%D0%BE%D0%BA-%D0%A4%D0%B5%D1%81%D1%82-61577011692610/',
  'https://www.facebook.com/p/%D0%9C%D0%B0%D0%BD%D0%B7%D1%83%D0%BB-%D0%A0%D0%BE%D0%BA-%D0%A4%D0%B5%D1%81%D1%82-61577011692610/',
  'B-priority and a valuable genuinely small target; economics likely require routing with another Bulgarian date.',
  'SNS-091',
  'small independent local open-air festival',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '17-18 July 2026', 'Autumn-winter', NULL
FROM festivals WHERE external_id = 'SNS-091';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 60,
  21, 3, 11.1,
  6, 4, 10,
  5, NULL, 'Medium',
  'Verified', 'unconfirmed',
  NULL, 'B-priority and a valuable genuinely small target; economics likely require routing with another Bulgarian date.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 96,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-091';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/p/%D0%9C%D0%B0%D0%BD%D0%B7%D1%83%D0%BB-%D0%A0%D0%BE%D0%BA-%D0%A4%D0%B5%D1%81%D1%82-61577011692610/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-091';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Manzul Rock Fest team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/p/%D0%9C%D0%B0%D0%BD%D0%B7%D1%83%D0%BB-%D0%A0%D0%BE%D0%BA-%D0%A4%D0%B5%D1%81%D1%82-61577011692610/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-091'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM with a low-complexity/all-in offer; no public form.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-091'
  AND festival_editions.edition_year = 2027;

-- SNS-092: Mindya Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Mindya Rock Fest community team' ORDER BY id LIMIT 1),
  'Mindya Rock Fest',
  'Mindya / Veliko Tarnovo',
  'rock, blues rock, classic rock',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/MindyaRockFest/',
  'https://www.facebook.com/MindyaRockFest/',
  'B-priority; active and very small, but blues/classic-rock leaning rather than metal-focused.',
  'SNS-092',
  'village community rock/blues festival',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '28-29 August 2026 (18th edition/Next Gen)', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-092';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 60,
  21, 3, 11.1,
  6, 4, 10,
  5, NULL, 'Medium',
  'Verified', 'unconfirmed',
  'Poduene Blues Band, Blues Traffic', 'B-priority; active and very small, but blues/classic-rock leaning rather than metal-focused.', 'Verify 2027 date, then pitch',
  '2026-09-19', 'pilot-2026-09-19', 97,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-092';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/MindyaRockFest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-092';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rocklive.bg/?lang=en', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-092';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Mindya Rock Fest community team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/MindyaRockFest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-092'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM; propose a melodic/classic-rock-friendly set.', 'Verify 2027 date, then pitch', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-092'
  AND festival_editions.edition_year = 2027;

-- SNS-093: Stilo Rally
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Stilo Rally team' ORDER BY id LIMIT 1),
  'Stilo Rally',
  'Dargobądz',
  'hard rock, blues rock, classic rock',
  'small-medium motorcycle rally',
  'https://biletomat.pl/wydarzenia/zlot-motocyklowy-stilo-rally-30679',
  NULL,
  NULL,
  'https://biletomat.pl/wydarzenia/zlot-motocyklowy-stilo-rally-30679',
  'Very high musical/audience fit; TSA headliner demonstrates acceptance of classic heavy rock. A strong priority for direct 2027 outreach.',
  'SNS-093',
  'multi-day motorcycle rally with rock concerts',
  'small-medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  '4-7 June 2026', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-093';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'B', 0, 60,
  21, 1.5, 12.6,
  4.5, 6.4, 6,
  8, NULL, 'Low',
  'Verified', 'not verified',
  'TSA MNKWL, Free Blues Band, Gryftone, Fair Play Blues', 'Very high musical/audience fit; TSA headliner demonstrates acceptance of classic heavy rock. A strong priority for direct 2027 outreach.', 'Check 2027 booking availability now',
  '2026-09-19', 'pilot-2026-09-19', 98,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-093';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://biletomat.pl/wydarzenia/zlot-motocyklowy-stilo-rally-30679', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-093';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/SorrentoCountry/videos/1834610193872446/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-093';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'B',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the organizer link/contact exposed on the official ticketing event page; no public band form found.', 'Check 2027 booking availability now', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-093'
  AND festival_editions.edition_year = 2027;

-- SNS-094: Flesh Party Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Flesh Party team' ORDER BY id LIMIT 1),
  'Flesh Party Open Air',
  'Sered',
  'death metal, grindcore, brutal death metal',
  'small-medium',
  'https://www.fleshparty.sk/',
  NULL,
  'https://www.facebook.com/fleshpartyfestival/',
  'https://www.fleshparty.sk/',
  'D-priority; not a natural stylistic fit.',
  'SNS-094',
  'underground extreme-metal open air',
  'small-medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; unannounced',
  'Annual summer edition', 'Autumn', NULL
FROM festivals WHERE external_id = 'SNS-094';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 66,
  7.5, 15, 12.6,
  9, 6.4, 7.2,
  8.2, 'C', 'Medium',
  'Verified', 'Extensive underground international history',
  NULL, 'D-priority; not a natural stylistic fit.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 99,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-094';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.fleshparty.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-094';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/fleshpartyfestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-094';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Flesh Party team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/fleshpartyfestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-094'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Organizer contact/social DM', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-094'
  AND festival_editions.edition_year = 2027;

-- SNS-095: Gothoom Open Air Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Gothoom Productions' ORDER BY id LIMIT 1),
  'Gothoom Open Air Fest',
  'Ostry Grun',
  'death metal, black metal, extreme metal',
  'small-medium',
  'https://gothoom.com/',
  NULL,
  'https://www.facebook.com/gothoomfestival/',
  'https://gothoom.com/',
  'D-priority; stylistically too extreme except as an unusual traditional-metal slot.',
  'SNS-095',
  'underground extreme-metal open air',
  'small-medium'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; date unannounced',
  'Annual summer edition', 'August-November', NULL
FROM festivals WHERE external_id = 'SNS-095';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 66,
  7.5, 15, 12.6,
  9, 6.4, 7.2,
  8.2, 'C', 'Medium',
  'Verified', 'Extensive underground international history',
  NULL, 'D-priority; stylistically too extreme except as an unusual traditional-metal slot.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 100,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-095';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://gothoom.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-095';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/gothoomfestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-095';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Gothoom Productions', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/gothoomfestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-095'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact Gothoom Productions/socials', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-095'
  AND festival_editions.edition_year = 2027;

-- SNS-096: Kaltenbach Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'KV Oberes Mürztal' ORDER BY id LIMIT 1),
  'Kaltenbach Open Air',
  'Spital am Semmering',
  'black metal, death metal, thrash metal, folk metal, grindcore',
  'small-medium specialist festival',
  'https://kaltenbach-openair.at/en/',
  'https://www.instagram.com/kaltenbachopenair/',
  'https://www.facebook.com/KaltenbachOpenAir/',
  'https://kaltenbach-openair.at/en/',
  'C-priority: excellent cross-border credentials but much more extreme than Saints ''N'' Sinners.',
  'SNS-096',
  'mountain extreme-metal open air',
  'small-medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'return indicated by official post, but dates/booking not yet published',
  'August 2026; 36 bands across three days', 'Autumn of the preceding year; 2026 international announcements were already being made in November 2025.', NULL
FROM festivals WHERE external_id = 'SNS-096';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 65,
  7.5, 15, 12.6,
  9, 6.4, 5.2,
  9.6, 'C', 'Medium',
  'Verified', 'Extensive international history.',
  'Sacred Reich, Finntroll, 1349, Firespawn, Gutalax', 'C-priority: excellent cross-border credentials but much more extreme than Saints ''N'' Sinners.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 101,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-096';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://kaltenbach-openair.at/en/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-096';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'KV Oberes Mürztal', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/kaltenbachopenair/',
  'https://www.facebook.com/KaltenbachOpenAir/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-096'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the official site''s Contact section/social channels; lineup is curated and no open application was verified.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-096'
  AND festival_editions.edition_year = 2027;

-- SNS-097: Running Free Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Metal Force HMC' ORDER BY id LIMIT 1),
  'Running Free Festival',
  'Strinava near Dryanovo',
  'thrash metal, death metal, black metal, speed metal',
  'small-medium',
  'https://running-free.bg/',
  'https://www.instagram.com/running.free.festival/',
  'https://www.facebook.com/running.free.festival/',
  'https://running-free.bg/',
  'B-priority: traditional-heavy side can work, but the event leans substantially more extreme than Saints ''N'' Sinners.',
  'SNS-097',
  'independent underground camping festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '28-29 August 2026 (9th edition)', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-097';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 65,
  7.5, 12, 12.6,
  9, 6.4, 10,
  7.6, 'C', 'Medium',
  'Verified', 'yes',
  NULL, 'B-priority: traditional-heavy side can work, but the event leans substantially more extreme than Saints ''N'' Sinners.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 102,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-097';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://running-free.bg/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-097';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/running.free.festival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-097';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Metal Force HMC', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/running.free.festival/',
  'https://www.facebook.com/running.free.festival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-097'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct message to festival or Metal Force HMC; no public band application form found.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-097'
  AND festival_editions.edition_year = 2027;

-- SNS-098: Odyssea Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Odyssea Festival team' ORDER BY id LIMIT 1),
  'Odyssea Festival',
  'Black Sea coast',
  'metal, extreme metal',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/odysseafestival/',
  'https://www.facebook.com/odysseafestival/',
  'C/B depending next lineup; verify status first.',
  'SNS-098',
  'independent metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '2025 edition traceable; no 2026 date confirmed', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-098';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 62,
  7.5, 12, 12.6,
  6, 6.4, 10,
  7.6, 'C', 'Low',
  'Verified', 'yes',
  NULL, 'C/B depending next lineup; verify status first.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 103,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-098';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/odysseafestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-098';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Odyssea Festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/odysseafestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-098'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM asking whether the next edition is planned.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-098'
  AND festival_editions.edition_year = 2027;

-- SNS-099: MetalGate Czech Death Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'MetalGate' ORDER BY id LIMIT 1),
  'MetalGate Czech Death Fest',
  'Cerveny Kostelec',
  'death metal, black metal, thrash metal, metal',
  'medium',
  'https://www.czechdeathfest.cz/',
  NULL,
  'https://www.facebook.com/czechdeathfest/',
  'https://www.czechdeathfest.cz/',
  'C-priority: scene is substantially more extreme than Saints ''N'' Sinners.',
  'SNS-099',
  'campground metal open air',
  'medium'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring; date unannounced',
  'Annual, June', 'September-November', NULL
FROM festivals WHERE external_id = 'SNS-099';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 62,
  7.5, 12, 12.6,
  9, 6.4, 6.8,
  7.6, 'C', 'Medium',
  'Verified', 'Yes',
  NULL, 'C-priority: scene is substantially more extreme than Saints ''N'' Sinners.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 104,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-099';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.czechdeathfest.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-099';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/czechdeathfest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-099';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'MetalGate', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/czechdeathfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-099'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact MetalGate/official Facebook; no public form confirmed', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-099'
  AND festival_editions.edition_year = 2027;

-- SNS-100: Metal Gates Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Metal Gates Festival team / Quantic Club partners' ORDER BY id LIMIT 1),
  'Metal Gates Festival',
  'Bucharest',
  'doom metal, death metal, black metal, progressive metal',
  'small-medium',
  NULL,
  'https://www.instagram.com/metalgatesfestival/',
  'https://www.facebook.com/metalgatesfestival/',
  'https://www.facebook.com/metalgatesfestival/',
  'B/C fit: international infrastructure is attractive, but programming leans darker/extreme.',
  'SNS-100',
  'indoor club metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '25-27 September 2025; no confirmed 2026 edition found', 'Unknown until next edition is announced', NULL
FROM festivals WHERE external_id = 'SNS-100';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 62,
  7.5, 12, 12.6,
  6, 6.4, 9,
  8, 'C', 'Low',
  'Verified', 'yes',
  'Funeral, Holls, Meggera, Shores of Null', 'B/C fit: international infrastructure is attractive, but programming leans darker/extreme.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 105,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-100';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/metalgatesfestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-100';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://antichristmagazine.com/report-metal-gates-festival-2025/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-100';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Metal Gates Festival team / Quantic Club partners', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/metalgatesfestival/',
  'https://www.facebook.com/metalgatesfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-100'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'DM/email through official social profiles; confirm next edition before pitching.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-100'
  AND festival_editions.edition_year = 2027;

-- SNS-101: Rockowisko Zwierzyniec
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rockowisko Zwierzyniec / local municipal partners' ORDER BY id LIMIT 1),
  'Rockowisko Zwierzyniec',
  'Zwierzyniec',
  'metal, death metal, doom metal, hardcore, folk metal',
  'medium regional/international',
  NULL,
  NULL,
  'https://www.facebook.com/events/682475194758605/',
  'https://hellshorde.com/event/rockowisko-zwierzyniec-2026/1622',
  'Medium fit: credible international bill and recurring event, but significantly heavier/extreme than Saints ''N'' Sinners. Pitch as the traditional/melodic heavy-metal contrast slot.',
  'SNS-101',
  'municipal park metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; strongly recurring',
  '3-4 July 2026 (11th edition)', 'Likely September-December 2026 for July 2027', NULL
FROM festivals WHERE external_id = 'SNS-101';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 61,
  7.5, 12, 12.6,
  6, 7.2, 6,
  9.6, 'C', 'Medium',
  'Verified', 'verified: international acts appeared in 2026',
  'Carcass, I Am Morbid, Get The Shot, Furia, Dopelord, LYRRE', 'Medium fit: credible international bill and recurring event, but significantly heavier/extreme than Saints ''N'' Sinners. Pitch as the traditional/melodic heavy-metal contrast slot.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 106,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-101';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/rockowisko-zwierzyniec-2026/1622', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-101';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/events/682475194758605/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-101';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rockowisko Zwierzyniec / local municipal partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/events/682475194758605/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-101'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'No public application form found; DM the official Facebook event/page and request the program curator''s email.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-101'
  AND festival_editions.edition_year = 2027;

-- SNS-102: Free Tree Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Free Tree Open Air cultural association' ORDER BY id LIMIT 1),
  'Free Tree Open Air',
  'Taiskirchen im Innkreis',
  'rock, alternative, punk, indie, electronic',
  'small-medium rural festival',
  'https://www.freetreeopenair.at/',
  'https://www.instagram.com/freetreeopenair/',
  'https://www.facebook.com/freetreeopenair/',
  'https://www.freetreeopenair.at/',
  'C-priority: scale and independent organization are attractive, but style fit depends on the year''s rock programming.',
  'SNS-102',
  'nonprofit youth/cultural open air',
  'small-medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'expected recurring; lineup/application not yet announced',
  'annual summer event; 2026 edition active', 'Autumn-winter for the following summer.', NULL
FROM festivals WHERE external_id = 'SNS-102';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 60,
  15, 12, 3,
  9, 6.4, 6.8,
  7.6, 'C', 'Medium',
  'Verified', 'Yes, but programming is eclectic rather than metal-led.',
  NULL, 'C-priority: scale and independent organization are attractive, but style fit depends on the year''s rock programming.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 107,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-102';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.freetreeopenair.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-102';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/freetreeopenair/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-102';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Free Tree Open Air cultural association', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/freetreeopenair/',
  'https://www.facebook.com/freetreeopenair/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-102'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the official site contact/social DM; no metal-specific or open artist form was verified.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-102'
  AND festival_editions.edition_year = 2027;

-- SNS-103: Szene Openair
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Szene Lustenau' ORDER BY id LIMIT 1),
  'Szene Openair',
  'Lustenau',
  'rock, alternative, punk, hip-hop, electronic',
  'medium multi-genre',
  'https://www.szeneopenair.at/',
  'https://www.instagram.com/szeneopenair/',
  'https://www.facebook.com/szeneopenair/',
  'https://www.szeneopenair.at/',
  'C-priority because it is multi-genre and geographically far west; useful only as part of a Germany/Switzerland routing.',
  'SNS-103',
  'youth-cultural open-air festival',
  'medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'expected recurring; artist submissions not yet announced',
  'annual summer event; 2026 edition active', 'Autumn for the following summer.', NULL
FROM festivals WHERE external_id = 'SNS-103';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 1, 60,
  15, 12, 3,
  9, 6.4, 6.8,
  8.2, 'C', 'Medium',
  'Verified', 'Yes; international lineup, though not metal-focused.',
  NULL, 'C-priority because it is multi-genre and geographically far west; useful only as part of a Germany/Switzerland routing.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 108,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-103';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.szeneopenair.at/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-103';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/szeneopenair/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-103';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Szene Lustenau', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/szeneopenair/',
  'https://www.facebook.com/szeneopenair/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-103'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated; contact official channels with a rock-stage proposal. No public application form verified.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-103'
  AND festival_editions.edition_year = 2027;

-- SNS-104: Rock Weekend Berkovitsa
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Berkovitsa Municipality' ORDER BY id LIMIT 1),
  'Rock Weekend Berkovitsa',
  'Berkovitsa',
  'rock, hard rock',
  'small',
  'https://www.berkovitsa.bg/',
  NULL,
  NULL,
  'https://www.berkovitsa.bg/%D1%80%D0%BE%D0%BA-%D0%B2-%D0%B1%D0%B5%D1%80%D0%BA%D0%BE%D0%B2%D0%B8%D1%86%D0%B0/',
  'B-priority local municipal date and logical routing partner for the nearby Petrohan moto fest.',
  'SNS-104',
  'municipal rock weekend',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '17-18 July 2026', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-104';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 59,
  21, 3, 11.1,
  4.5, 4.8, 10,
  5, NULL, 'Low',
  'Verified', 'unconfirmed',
  NULL, 'B-priority local municipal date and logical routing partner for the nearby Petrohan moto fest.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 109,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-104';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.berkovitsa.bg/%D1%80%D0%BE%D0%BA-%D0%B2-%D0%B1%D0%B5%D1%80%D0%BA%D0%BE%D0%B2%D0%B8%D1%86%D0%B0/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-104';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.berkovitsa.bg/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-104';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the municipality contact channel and request the culture department/program producer; no open form found.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-104'
  AND festival_editions.edition_year = 2027;

-- SNS-105: Ogólnopolski Festiwal Muzyki ROCKOWANIA
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Miejski Dom Kultury w Mławie' ORDER BY id LIMIT 1),
  'Ogólnopolski Festiwal Muzyki ROCKOWANIA',
  'Mława',
  'rock, hard rock, heavy metal, punk, blues',
  'small national competition',
  'https://mdkmlawa.com/aktualnosci/2026/09/zagraj-na-rockowaniach-2026-zglos-swoj-zespol/',
  NULL,
  'https://www.facebook.com/mdkmlawa/',
  'https://mdkmlawa.com/aktualnosci/2026/09/zagraj-na-rockowaniach-2026-zglos-swoj-zespol/',
  'Musically excellent but eligibility is problematic: the competition is for amateur bands and may be Poland-focused. Saints should ask about guest/headliner placement rather than assume contest eligibility.',
  'SNS-105',
  'municipal rock-band competition',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; annual and strongly recurring',
  '17 October 2026 (22nd edition)', '2026 call published 9 September, deadline 5 October; expect September 2027 if repeated', NULL
FROM festivals WHERE external_id = 'SNS-105';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 59,
  21, 1.5, 12,
  9, 4.8, 6,
  5, NULL, 'Medium',
  'Verified', 'not verified; described as nationwide Polish competition',
  'Kobranocka (2026 final headliner)', 'Musically excellent but eligibility is problematic: the competition is for amateur bands and may be Poland-focused. Saints should ask about guest/headliner placement rather than assume contest eligibility.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 110,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-105';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://mdkmlawa.com/aktualnosci/2026/09/zagraj-na-rockowaniach-2026-zglos-swoj-zespol/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-105';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/mdkmlawa/posts/1749385770528558/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-105';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Miejski Dom Kultury w Mławie', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/mdkmlawa/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-105'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Formal open call. For 2026, amateur bands with original repertoire applied by 5 October; eight bands were selected for the final.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-105'
  AND festival_editions.edition_year = 2027;

-- SNS-106: Bunt Rok Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'RTS Bunt / Radio Television of Serbia' ORDER BY id LIMIT 1),
  'Bunt Rok Festival',
  'Belgrade',
  'rock, alternative, hard rock, metal',
  'national showcase',
  'https://rtsplaneta.rs/',
  NULL,
  'https://www.facebook.com/BuntRTS/',
  'https://www.facebook.com/BuntRTS/videos/branka-glavonjic-povodom-koonkursa-za-bunt-rok-festival-2026/1601509274530586/',
  'Low practical fit due to competition/eligibility and national-platform character; useful only if foreign established bands can appear as guests.',
  'SNS-106',
  'National TV competition for young/unestablished original bands',
  'showcase'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected recurring; call not yet announced',
  '2026 call closed 24 February 2026 (10th edition)', '2026 deadline was 24 February; monitor January-February 2027', NULL
FROM festivals WHERE external_id = 'SNS-106';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 59,
  21, 3, 9,
  9, 4, 9.4,
  4, NULL, 'Medium',
  'Verified', 'false',
  NULL, 'Low practical fit due to competition/eligibility and national-platform character; useful only if foreign established bands can appear as guests.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 111,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-106';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/BuntRTS/videos/branka-glavonjic-povodom-koonkursa-za-bunt-rok-festival-2026/1601509274530586/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-106';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rtsplaneta.rs/sr_lat/video/4454316/bunt-rok-festival-2025-finale', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-106';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'RTS Bunt / Radio Television of Serbia', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/BuntRTS/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-106'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Formal competition call; eligibility focuses on young and unestablished bands. Verify foreign-band eligibility before applying.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-106'
  AND festival_editions.edition_year = 2027;

-- SNS-107: Pivofest Prilep
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Municipality of Prilep / event production partners' ORDER BY id LIMIT 1),
  'Pivofest Prilep',
  'Prilep',
  'rock, pop, folk, regional mainstream',
  'medium-large municipal festival',
  'https://www.prilep.gov.mk/',
  NULL,
  NULL,
  'https://www.prilep.gov.mk/',
  'Potentially good audience and route value, but the bill is mainstream and booking may be political/municipal. Medium priority.',
  'SNS-107',
  'Municipal beer festival with large free concert programme',
  'medium-large'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Recurring event, 2027 details not announced',
  'Traditionally July/August; a current 2026 rock-specific lineup was not reliably indexed', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-107';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 1, 58,
  15, 3, 7.5,
  4.5, 8.8, 9.4,
  10, NULL, 'Low',
  'Verified', 'true',
  NULL, 'Potentially good audience and route value, but the bill is mainstream and booking may be political/municipal. Medium priority.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 112,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-107';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.prilep.gov.mk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-107';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.chasingthedonkey.com/festivals-in-macedonia-travel-blog/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-107';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Approach Prilep Municipality''s culture/events office and request the current production company; no verified direct festival booking contact was found.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-107'
  AND festival_editions.edition_year = 2027;

-- SNS-108: Moto Rock Festiwal Kopalino
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'local Kopalino Moto Rock team/municipal partners' ORDER BY id LIMIT 1),
  'Moto Rock Festiwal Kopalino',
  'Kopalino',
  'rock, hard rock, blues rock',
  'small regional motorcycle festival',
  NULL,
  NULL,
  'https://www.facebook.com/traktoremnadmorze/videos/1062115658820277/',
  'https://www.facebook.com/powiatwejherowski/posts/1204202988385320/',
  'Strong biker/classic-rock fit, but current status is weaker than Tuchów or Stilo Rally. Keep as a verification lead.',
  'SNS-108',
  'coastal motorcycle/vehicle rock festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', '2026 edition not verified; recurring through 2025, currently unconfirmed',
  '27-28 June 2025 (10th jubilee edition)', 'unknown', NULL
FROM festivals WHERE external_id = 'SNS-108';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 58,
  21, 1.5, 11.1,
  6, 4, 6,
  8, 'B', 'Low',
  'Verified', 'not verified',
  'Łydka Grubasa, Blenders, Mitra, Wehikuł Czasu (2023 examples)', 'Strong biker/classic-rock fit, but current status is weaker than Tuchów or Stilo Rally. Keep as a verification lead.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 113,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-108';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/powiatwejherowski/posts/1204202988385320/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-108';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/traktoremnadmorze/videos/1062115658820277/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-108';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'local Kopalino Moto Rock team/municipal partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/traktoremnadmorze/videos/1062115658820277/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-108'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'First verify whether a new edition is planned through the linked community coverage/organizer trail; do not send fee proposal until current organizer is confirmed.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-108'
  AND festival_editions.edition_year = 2027;

-- SNS-109: Brezovska metalova noc
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Municipal cultural organization / local promoter' ORDER BY id LIMIT 1),
  'Brezovska metalova noc',
  'Brezova u Sokolova',
  'heavy metal, hard rock, Czech metal',
  'small',
  'https://www.mu-brezova.cz/',
  NULL,
  NULL,
  'https://www.mu-brezova.cz/',
  'A/B-priority micro target if active; exactly the municipal format sought, but fee/travel support may be limited.',
  'SNS-109',
  'municipal metal night',
  'small'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring one-night event; current date not confirmed', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-109';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 57,
  21, 3, 12,
  4.5, 4.8, 6.8,
  5, 'B', 'Low',
  'Verified', 'Unclear; likely domestic-heavy',
  NULL, 'A/B-priority micro target if active; exactly the municipal format sought, but fee/travel support may be limited.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 114,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-109';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.mu-brezova.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-109';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Ask the municipal culture department for the Metalova noc programmer', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-109'
  AND festival_editions.edition_year = 2027;

-- SNS-110: Lowland Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Lowland Fest' ORDER BY id LIMIT 1),
  'Lowland Fest',
  'Ásotthalom',
  'death metal, black metal, thrash metal, hardcore, melodic metal',
  'small underground festival',
  NULL,
  'https://www.instagram.com/lowland.fest/',
  'https://www.facebook.com/lowlandfest/',
  'https://www.facebook.com/lowlandfest/',
  'B/C-priority: accessible and cross-border friendly, but significantly more extreme than the band; pitch the traditional/melodic-metal angle.',
  'SNS-110',
  'independent underground metal open air',
  'small'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  'summer 2026; active edition evidenced by 2026 lineup/performance posts', 'Monitor October 2026-February 2027; 2026 lineup activity was already visible by December 2025.', NULL
FROM festivals WHERE external_id = 'SNS-110';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 57,
  7.5, 12, 11.1,
  6, 4, 8,
  8.6, 'C', 'Medium',
  'Verified', 'Yes; 2026 lineup publicity included international underground metal bands.',
  'Moribund Oblivion, Wendigo, Akela, Komodo', 'B/C-priority: accessible and cross-border friendly, but significantly more extreme than the band; pitch the traditional/melodic-metal angle.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 115,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-110';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/lowlandfest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-110';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/lowland.fest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-110';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Lowland Fest', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/lowland.fest/',
  'https://www.facebook.com/lowlandfest/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-110'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'DM the official pages; public posts have explicitly invited interested bands, but no durable form/email was verified.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-110'
  AND festival_editions.edition_year = 2027;

-- SNS-111: Ukk & Roll
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Ukk & Roll community organizers' ORDER BY id LIMIT 1),
  'Ukk & Roll',
  'Ukk',
  'hard rock, heavy metal, Hungarian rock',
  'small village festival',
  NULL,
  NULL,
  'https://www.facebook.com/ukkandroll/',
  'https://www.facebook.com/ukkandroll/',
  'A-priority stylistically and in scale if reactivated; currently a lead requiring status validation, not a confirmed opportunity.',
  'SNS-111',
  'village rock/metal camping festival',
  'small'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed; requires direct reconfirmation',
  'recent recurring summer event; a reliable 2026 date was not verified', 'If active, approach in autumn/winter for summer programming.', NULL
FROM festivals WHERE external_id = 'SNS-111';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 57,
  21, 1.5, 11.1,
  6, 4, 8,
  5, 'B', 'Low',
  'Verified', 'Not verified.',
  NULL, 'A-priority stylistically and in scale if reactivated; currently a lead requiring status validation, not a confirmed opportunity.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 116,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-111';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/ukkandroll/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-111';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Ukk & Roll community organizers', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/ukkandroll/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-111'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct Facebook message; ask whether a 2027 edition is planned before sending the full EPK.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-111'
  AND festival_editions.edition_year = 2027;

-- SNS-112: Ladce Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local organizers/municipal partners' ORDER BY id LIMIT 1),
  'Ladce Rock Fest',
  'Ladce',
  'rock, hard rock, metal',
  'small',
  'https://www.ladce.sk/',
  NULL,
  NULL,
  'https://www.ladce.sk/',
  'B-priority micro target if active; suitable style but likely a low travel budget.',
  'SNS-112',
  'small municipal/local rock festival',
  'small'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring local event; recent edition not independently confirmed', 'Autumn-winter if active', NULL
FROM festivals WHERE external_id = 'SNS-112';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 57,
  21, 3, 11.1,
  4.5, 4.8, 7.2,
  5, 'B', 'Low',
  'Verified', 'Unclear',
  NULL, 'B-priority micro target if active; suitable style but likely a low travel budget.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 117,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-112';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.ladce.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-112';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Ask Ladce municipality/culture office whether the festival continues and who books bands', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-112'
  AND festival_editions.edition_year = 2027;

-- SNS-113: Rock Ples
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local promoter' ORDER BY id LIMIT 1),
  'Rock Ples',
  'Liptovsky Mikulas region',
  'rock, hard rock, metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/rockples/',
  'https://www.facebook.com/rockples/',
  'B-priority only if active; useful because it expands the booking season beyond summer.',
  'SNS-113',
  'winter indoor rock mini-festival/ball',
  'small'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring winter event; current edition unconfirmed', 'Spring-autumn for following winter', NULL
FROM festivals WHERE external_id = 'SNS-113';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 57,
  21, 3, 11.1,
  6, 4, 7.2,
  5, 'B', 'Low',
  'Verified', 'Unclear',
  NULL, 'B-priority only if active; useful because it expands the booking season beyond summer.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 118,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-113';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockples/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-113';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Local promoter', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/rockples/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-113'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM; verify organizer and next date', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-113'
  AND festival_editions.edition_year = 2027;

-- SNS-114: Rockfest Nitrianske Rudno
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local/private organizer' ORDER BY id LIMIT 1),
  'Rockfest Nitrianske Rudno',
  'Nitrianske Rudno',
  'hard rock, Slovak rock, heavy metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/rockfestnitrianskerudno/',
  'https://www.facebook.com/rockfestnitrianskerudno/',
  'A/B-priority micro-festival if active; budget-sensitive routed offer required.',
  'SNS-114',
  'small regional rock festival',
  'small'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring summer event; exact 2026 date not confirmed', 'Autumn-winter', NULL
FROM festivals WHERE external_id = 'SNS-114';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 57,
  21, 3, 11.1,
  6, 4, 7.2,
  5, 'B', 'Low',
  'Verified', 'Unclear',
  NULL, 'A/B-priority micro-festival if active; budget-sensitive routed offer required.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 119,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-114';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockfestnitrianskerudno/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-114';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Local/private organizer', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/rockfestnitrianskerudno/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-114'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM; first confirm next edition', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-114'
  AND festival_editions.edition_year = 2027;

-- SNS-115: Rock & Pop Beer Fest Rakitovo
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rakitovo Municipality/local partners' ORDER BY id LIMIT 1),
  'Rock & Pop Beer Fest Rakitovo',
  'Rakitovo',
  'rock, pop rock',
  'small',
  NULL,
  'https://www.instagram.com/obshtina.rakitovo/',
  NULL,
  'https://www.instagram.com/obshtina.rakitovo/',
  'C/B target: mixed family rock/pop program; suitable only with a melodic, accessible festival set.',
  'SNS-115',
  'municipal beer/music festival',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'June 2026', 'Autumn-winter if renewed', NULL
FROM festivals WHERE external_id = 'SNS-115';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 55,
  15, 3, 11.1,
  6, 4.8, 10,
  5, 'B', 'Low',
  'Verified', 'unconfirmed',
  'Konkurent, Kerana & Kosmonavtite', 'C/B target: mixed family rock/pop program; suitable only with a melodic, accessible festival set.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 120,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-115';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/obshtina.rakitovo/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-115';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rakitovo Municipality/local partners', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/obshtina.rakitovo/',
  NULL, 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-115'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'DM the municipal account and request the culture/events booking contact.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-115'
  AND festival_editions.edition_year = 2027;

-- SNS-116: Łyski Rock Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'not publicly verified' ORDER BY id LIMIT 1),
  'Łyski Rock Festival',
  'Łyski',
  'rock, hard rock',
  'small regional',
  NULL,
  'https://www.instagram.com/p/DcmPR0Cxx8D/',
  NULL,
  'https://www.instagram.com/p/DcmPR0Cxx8D/',
  'Potentially suitable local rock date, but contact provenance is insufficient; keep in research queue rather than send immediately.',
  'SNS-116',
  'small-town rock festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; 2026 activity verified only through public performance posts',
  'August 2026 (exact date not captured)', 'unknown; likely autumn/winter preceding summer edition', NULL
FROM festivals WHERE external_id = 'SNS-116';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 55,
  21, 1.5, 11.1,
  6, 4.8, 6,
  5, NULL, 'Medium',
  'Verified', 'not verified',
  NULL, 'Potentially suitable local rock date, but contact provenance is insufficient; keep in research queue rather than send immediately.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 121,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-116';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/p/DcmPR0Cxx8D/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-116';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'not publicly verified', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/p/DcmPR0Cxx8D/',
  NULL, 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-116'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Organizer identity/contact needs verification; use the public 2026 post to trace the event page before outreach.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-116'
  AND festival_editions.edition_year = 2027;

-- SNS-117: Rock am Palast
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rock am Palast / Fort Prusy' ORDER BY id LIMIT 1),
  'Rock am Palast',
  'Nysa',
  'rock, metal, alternative',
  'small-medium regional',
  NULL,
  NULL,
  'https://www.facebook.com/events/4310415875899436/',
  'https://hellshorde.com/event/rock-em-palast-2026/1114',
  'High fit by genre and venue scale; plausible anchor date near Czechia, useful for a Nysa-Ostrava/Brno routing concept.',
  'SNS-117',
  'independent fortress open-air festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; recurring',
  '17-19 July 2026 (5th edition)', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-117';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 55,
  15, 1.5, 12.6,
  6, 6.4, 6,
  7.6, NULL, 'Medium',
  'Verified', 'not verified',
  NULL, 'High fit by genre and venue scale; plausible anchor date near Czechia, useful for a Nysa-Ostrava/Brno routing concept.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 122,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-117';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/rock-em-palast-2026/1114', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-117';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/events/4310415875899436/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-117';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Rock am Palast / Fort Prusy', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/events/4310415875899436/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-117'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'DM official event/page and request booking email; no open form found.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-117'
  AND festival_editions.edition_year = 2027;

-- SNS-118: Zelesafest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Zelesafest team' ORDER BY id LIMIT 1),
  'Zelesafest',
  'Dolni Cermna',
  'rock, metal, alternative',
  'small',
  'https://www.zelesafest.cz/',
  NULL,
  'https://www.facebook.com/zelesafest/',
  'https://www.zelesafest.cz/',
  'B-priority route-fill target; verify international budget before full negotiation.',
  'SNS-118',
  'small independent rock/metal festival',
  'small'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced',
  'Annual summer edition', 'September-January', NULL
FROM festivals WHERE external_id = 'SNS-118';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 54,
  15, 3, 11.1,
  9, 4, 6.8,
  5, NULL, 'Medium',
  'Verified', 'Unclear',
  NULL, 'B-priority route-fill target; verify international budget before full negotiation.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 123,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-118';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.zelesafest.cz/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-118';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/zelesafest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-118';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Zelesafest team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/zelesafest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-118'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct message/contact page', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-118'
  AND festival_editions.edition_year = 2027;

-- SNS-119: Total War Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Total War Fest / local promoters' ORDER BY id LIMIT 1),
  'Total War Fest',
  'Budapest',
  'death metal, black metal, thrash metal',
  'small club festival',
  NULL,
  NULL,
  'https://www.facebook.com/totalwarfest/',
  'https://www.facebook.com/totalwarfest/',
  'C-priority because the event skews extreme; only useful if a traditional-heavy slot is offered.',
  'SNS-119',
  'indoor underground metal mini-festival',
  'small'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'recurring club-format event; current 2027 date not announced', 'Contact 6-9 months ahead after edition confirmation.', NULL
FROM festivals WHERE external_id = 'SNS-119';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 54,
  7.5, 12, 11.1,
  6, 4, 8,
  5.6, 'C', 'Low',
  'Verified', 'International underground acts have appeared, but current policy is unverified.',
  NULL, 'C-priority because the event skews extreme; only useful if a traditional-heavy slot is offered.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 124,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-119';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/totalwarfest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-119';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Total War Fest / local promoters', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/totalwarfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-119'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM to promoter; curated bills, no public application verified.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-119'
  AND festival_editions.edition_year = 2027;

-- SNS-120: Aggressive Music Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Aggressive Music Fest team' ORDER BY id LIMIT 1),
  'Aggressive Music Fest',
  'Pohori u Miroslavi',
  'death metal, grindcore, thrash metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/AggressiveMusicFest/',
  'https://www.facebook.com/AggressiveMusicFest/',
  'D-priority; too extreme for the band''s primary booking strategy.',
  'SNS-120',
  'underground metal open air',
  'small'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced',
  'Annual July edition', 'September-December', NULL
FROM festivals WHERE external_id = 'SNS-120';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 53,
  7.5, 12, 11.1,
  6, 4, 6.8,
  5.6, 'C', 'Medium',
  'Verified', 'Yes, underground international acts',
  NULL, 'D-priority; too extreme for the band''s primary booking strategy.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 125,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-120';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/AggressiveMusicFest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-120';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Aggressive Music Fest team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/AggressiveMusicFest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-120'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM only from public sources', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-120'
  AND festival_editions.edition_year = 2027;

-- SNS-121: Zdravo Mladi
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'MKC Skopje (Youth Cultural Center)' ORDER BY id LIMIT 1),
  'Zdravo Mladi',
  'Skopje',
  'alternative rock, indie, post-punk, experimental, electronic',
  'small-medium',
  'https://mkc.mk/',
  'https://www.instagram.com/zdravo.mladi/',
  'https://www.facebook.com/mkc.skopje/',
  'https://mkc.mk/',
  'Low stylistic fit for Saints ''N'' Sinners, though MKC can be valuable for a separate Skopje club date.',
  'SNS-121',
  'Youth Cultural Center alternative music festival',
  'small-medium'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed',
  'Recurring at MKC Skopje; exact 2026 edition details not established in reviewed sources', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-121';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 53,
  15, 3, 3,
  9, 6.4, 9.4,
  7.6, 'C', 'Low',
  'Verified', 'true',
  'Porto Morto', 'Low stylistic fit for Saints ''N'' Sinners, though MKC can be valuable for a separate Skopje club date.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 126,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-121';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://mkc.mk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-121';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/zdravo.mladi/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-121';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'MKC Skopje (Youth Cultural Center)', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/zdravo.mladi/',
  'https://www.facebook.com/mkc.skopje/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-121'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated programme; pitch to MKC through official channels, but position the band carefully because the festival is alternative/experimental rather than classic metal.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-121'
  AND festival_editions.edition_year = 2027;

-- SNS-122: Moto Piknik Nowa Dęba
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Stowarzyszenie Moto ND' ORDER BY id LIMIT 1),
  'Moto Piknik Nowa Dęba',
  'Nowa Dęba',
  'rock, hard rock, motorcycle culture',
  'small local',
  'https://naszanowadeba.pl/ii-moto-piknik-w-nowej-debie-24-maja-2026-r/',
  NULL,
  NULL,
  'https://naszanowadeba.pl/ii-moto-piknik-w-nowej-debie-24-maja-2026-r/',
  'High audience fit but micro budget likely. Best as a routed date near Rzeszów/Lublin and with local backline.',
  'SNS-122',
  'motorcycle association picnic with hard-rock concerts',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; young recurring event',
  '24 May 2026 (2nd edition)', 'Recommended September-December 2026', NULL
FROM festivals WHERE external_id = 'SNS-122';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 53,
  21, 1.5, 11.1,
  4.5, 4, 6,
  5, NULL, 'Low',
  'Verified', 'not verified',
  NULL, 'High audience fit but micro budget likely. Best as a routed date near Rzeszów/Lublin and with local backline.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 127,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-122';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://naszanowadeba.pl/ii-moto-piknik-w-nowej-debie-24-maja-2026-r/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-122';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact Stowarzyszenie Moto ND through its social channel/local event partner; no band application form found.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-122'
  AND festival_editions.edition_year = 2027;

-- SNS-123: Wolf Fest - Vălcha Păteka
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Wolf Fest Chelopech team/local partners' ORDER BY id LIMIT 1),
  'Wolf Fest - Vălcha Păteka',
  'Chelopech',
  'rock, heavy metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/wolffestchelopech/',
  'https://www.facebook.com/wolffestchelopech/',
  'B-priority; potentially too established for the competition but relevant as a guest band.',
  'SNS-123',
  'local rock/metal festival and band competition',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '21 August 2026', 'Autumn to early spring', NULL
FROM festivals WHERE external_id = 'SNS-123';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 52,
  21, 3, 3,
  6, 4, 10,
  5, 'C', 'Medium',
  'Verified', 'unconfirmed',
  NULL, 'B-priority; potentially too established for the competition but relevant as a guest band.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 128,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-123';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/wolffestchelopech/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-123';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Wolf Fest Chelopech team/local partners', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/wolffestchelopech/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-123'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM. Pitch as international guest/support rather than youth competition entrant.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-123'
  AND festival_editions.edition_year = 2027;

-- SNS-124: Schoolwave
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Schooligans / Schoolwave' ORDER BY id LIMIT 1),
  'Schoolwave',
  'Athens',
  'rock, metal, punk, indie, youth music',
  'medium',
  'https://www.schoolwave.gr/',
  'https://www.instagram.com/schoolwavefestival/',
  'https://www.facebook.com/schoolwavefestival/',
  'https://www.schoolwave.gr/',
  'Not eligible as a normal contestant. Possible low-priority guest/mentoring opportunity, especially if paired with an Athens concert.',
  'SNS-124',
  'Youth/school-band festival and showcase',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Likely recurring but not confirmed',
  'Annual/recurring; 2026 programme should be checked on official channels', 'Follow the official annual call; guest proposals can be sent several months earlier.', NULL
FROM festivals WHERE external_id = 'SNS-124';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 51,
  15, 1.5, 3,
  9, 6.4, 8.6,
  7.6, 'C', 'Medium',
  'Verified', 'Not central',
  'Greek school and youth bands', 'Not eligible as a normal contestant. Possible low-priority guest/mentoring opportunity, especially if paired with an Athens concert.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 129,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-124';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.schoolwave.gr/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-124';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/schoolwavefestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-124';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Schooligans / Schoolwave', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/schoolwavefestival/',
  'https://www.facebook.com/schoolwavefestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-124'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Competition applications are age/school-status restricted. An established adult band should only approach for guest, mentor, clinic or special-show participation.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-124'
  AND festival_editions.edition_year = 2027;

-- SNS-125: Paletstock Festiwal
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Paletstock Festiwal' ORDER BY id LIMIT 1),
  'Paletstock Festiwal',
  'Bełżyce',
  'metal, rock, underground',
  'micro/DIY',
  NULL,
  NULL,
  'https://www.facebook.com/profile.php?id=61557511724915',
  'https://hellshorde.com/event/paletstock-festiwal-2026/1914',
  'Musically viable and genuinely small, but financial risk is high. Use only with another paid Lublin-area show.',
  'SNS-125',
  'free DIY rural pallet-stage festival',
  'micro'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; strongly recurring',
  '14-15 August 2026 (7th edition)', 'Recommended September 2026-January 2027', NULL
FROM festivals WHERE external_id = 'SNS-125';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 49,
  15, 1.5, 11.1,
  6, 4, 6,
  5, NULL, 'Medium',
  'Verified', 'not verified',
  NULL, 'Musically viable and genuinely small, but financial risk is high. Use only with another paid Lublin-area show.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 130,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-125';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/paletstock-festiwal-2026/1914', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-125';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/profile.php?id=61557511724915', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-125';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Paletstock Festiwal', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/profile.php?id=61557511724915', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-125'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'DM official Facebook profile; pitch a routed date and ask explicitly about travel/hotel/backline because the event is free and DIY.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-125'
  AND festival_editions.edition_year = 2027;

-- SNS-126: Sun Dies Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'MOK Olsztyn and Sun Dies Festival' ORDER BY id LIMIT 1),
  'Sun Dies Festival',
  'Olsztyn',
  'metal, black metal, death metal, post-metal',
  'small-medium municipal',
  'https://www.mok.olsztyn.pl/',
  NULL,
  NULL,
  'https://hellshorde.com/event/sun-dies-festival-2026/1302',
  'Medium-low musical fit due to extreme orientation, but municipal amphitheatre production may support a foreign act. Pitch only if seeking genre expansion.',
  'SNS-126',
  'municipal amphitheatre metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; active and moved to Olsztyn in 2026',
  '22 August 2026', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-126';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 48,
  7.5, 1.5, 12.6,
  4.5, 7.2, 6,
  9, 'C', 'Low',
  'Verified', 'not verified',
  'Furia, Christ Agony, Blindead 23, Damnation, Gorycz', 'Medium-low musical fit due to extreme orientation, but municipal amphitheatre production may support a foreign act. Pitch only if seeking genre expansion.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 131,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-126';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/sun-dies-festival-2026/1302', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-126';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.mok.olsztyn.pl/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-126';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact MOK Olsztyn programming office and Sun Dies social channel; no open call found.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-126'
  AND festival_editions.edition_year = 2027;

-- SNS-127: Rock to the End of the World
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Youth House Vratsa' ORDER BY id LIMIT 1),
  'Rock to the End of the World',
  'Vratsa',
  'rock, metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/p/%D0%9C%D0%BB%D0%B0%D0%B4%D0%B5%D0%B6%D0%BA%D0%B8-%D1%80%D0%BE%D0%BA-%D1%84%D0%B5%D1%81%D1%82%D0%B8%D0%B2%D0%B0%D0%BB-%D0%A0%D0%BE%D0%BA-%D0%B4%D0%BE-%D0%BA%D1%80%D0%B0%D1%8F-%D0%BD%D0%B0-%D1%81%D0%B2%D0%B5%D1%82%D0%B0-%D0%92%D1%80%D0%B0%D1%86%D0%B0-100057444700438/',
  'https://metalhangar18.com/site/xvi-%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BD%D0%B0-%D1%80%D0%BE%D0%BA-%D0%B4%D0%BE-%D0%BA%D1%80%D0%B0%D1%8F-%D0%BD%D0%B0-%D1%81%D0%B2%D0%B5%D1%82%D0%B0.mh18',
  'C-priority because Saints ''N'' Sinners exceeds the likely competitor profile; guest role may still work.',
  'SNS-127',
  'youth-house winter rock festival',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'likely',
  '13 December 2025 (16th edition)', 'Spring-summer for December', NULL
FROM festivals WHERE external_id = 'SNS-127';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 46,
  15, 3, 3,
  6, 4, 10,
  5, 'C', 'Medium',
  'Verified', 'unconfirmed',
  NULL, 'C-priority because Saints ''N'' Sinners exceeds the likely competitor profile; guest role may still work.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 132,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-127';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://metalhangar18.com/site/xvi-%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BD%D0%B0-%D1%80%D0%BE%D0%BA-%D0%B4%D0%BE-%D0%BA%D1%80%D0%B0%D1%8F-%D0%BD%D0%B0-%D1%81%D0%B2%D0%B5%D1%82%D0%B0.mh18', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-127';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Youth House Vratsa', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/p/%D0%9C%D0%BB%D0%B0%D0%B4%D0%B5%D0%B6%D0%BA%D0%B8-%D1%80%D0%BE%D0%BA-%D1%84%D0%B5%D1%81%D1%82%D0%B8%D0%B2%D0%B0%D0%BB-%D0%A0%D0%BE%D0%BA-%D0%B4%D0%BE-%D0%BA%D1%80%D0%B0%D1%8F-%D0%BD%D0%B0-%D1%81%D0%B2%D0%B5%D1%82%D0%B0-%D0%92%D1%80%D0%B0%D1%86%D0%B0-100057444700438/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-127'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Approach as guest/headliner; the main festival platform is youth-oriented.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-127'
  AND festival_editions.edition_year = 2027;

-- SNS-128: Waves of Rock (Vălnite na Roka)
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Tutrakan Municipality and municipal extracurricular centre' ORDER BY id LIMIT 1),
  'Waves of Rock (Vălnite na Roka)',
  'Tutrakan',
  'rock, pop rock',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/RockWavesContest/',
  'https://bnrnews.bg/shumen/post/491923/valnite-na-roka-v-tutrakan',
  'C-priority; valuable only as invited professional guest because the core event is for children and youth.',
  'SNS-128',
  'municipal children/youth rock competition',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '19-21 June 2026 (first edition)', 'Autumn-winter if second edition is approved', NULL
FROM festivals WHERE external_id = 'SNS-128';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 45,
  15, 1.5, 3,
  6, 4.8, 10,
  5, 'C', 'Low',
  'Verified', 'no evidence',
  NULL, 'C-priority; valuable only as invited professional guest because the core event is for children and youth.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 133,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-128';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://bnrnews.bg/shumen/post/491923/valnite-na-roka-v-tutrakan', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-128';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/RockWavesContest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-128';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Tutrakan Municipality and municipal extracurricular centre', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/RockWavesContest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-128'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Not eligible as a normal competition entrant; approach the page/municipality for a guest, mentor or closing-band slot.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-128'
  AND festival_editions.edition_year = 2027;

-- SNS-129: DobrzaNOW Festiwal
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'DobrzaNOW festival team' ORDER BY id LIMIT 1),
  'DobrzaNOW Festiwal',
  'Dobrzanów',
  'folk metal, alternative, emo, dark country, hardcore',
  'micro/DIY',
  NULL,
  NULL,
  'https://www.facebook.com/events/1098218195583662',
  'https://hellshorde.com/event/dobrzanow-festiwal-2026/1750',
  'Low-medium stylistic fit and likely very low budget; useful only as a DIY routing date.',
  'SNS-129',
  'free DIY farm/camping festival',
  'micro'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  '2-4 July 2026', 'Recommended September 2026-January 2027', NULL
FROM festivals WHERE external_id = 'SNS-129';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 45,
  7.5, 1.5, 11.1,
  6, 4, 6,
  9, NULL, 'Medium',
  'Verified', 'not verified',
  'Runika, Awakeness, Violent Answer, Wolven Vault, Cyrograf', 'Low-medium stylistic fit and likely very low budget; useful only as a DIY routing date.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 134,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-129';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/dobrzanow-festiwal-2026/1750', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-129';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/events/1098218195583662', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-129';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'DobrzaNOW festival team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/events/1098218195583662', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-129'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'DM Facebook event/organizer; no public form. Lead with route-sharing and low-footprint technical requirements.', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-129'
  AND festival_editions.edition_year = 2027;

-- SNS-130: Wacken Metal Battle Slovakia
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Wacken Metal Battle Slovakia national organizer' ORDER BY id LIMIT 1),
  'Wacken Metal Battle Slovakia',
  'Bratislava',
  'metal',
  'small showcase',
  'https://www.metal-battle.com/',
  NULL,
  'https://www.facebook.com/WackenMetalBattleSlovakia/',
  'https://www.metal-battle.com/',
  'Likely ineligible as a Turkish band in Slovakia''s national heat; useful only for networking or guest-show inquiry.',
  'SNS-130',
  'club competition/showcase',
  'small'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Expected; rules/date unannounced',
  'Annual national selection, usually spring', 'Usually late autumn to early spring', NULL
FROM festivals WHERE external_id = 'SNS-130';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'C', 0, 45,
  7.5, 1.5, 11.1,
  9, 4, 7.2,
  5, NULL, 'Medium',
  'Verified', 'Not applicable; national competition',
  NULL, 'Likely ineligible as a Turkish band in Slovakia''s national heat; useful only for networking or guest-show inquiry.', 'Use only if a matching route or guest slot appears',
  '2026-09-19', 'pilot-2026-09-19', 135,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-130';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.metal-battle.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-130';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/WackenMetalBattleSlovakia/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-130';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Wacken Metal Battle Slovakia national organizer', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/WackenMetalBattleSlovakia/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-130'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'C',
  NULL, NULL, NULL,
  NULL, NULL, 'Competition application under annual rules; eligibility/residency must be checked', 'Use only if a matching route or guest slot appears', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-130'
  AND festival_editions.edition_year = 2027;

-- SNS-131: Metal On The Hill
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Napalm Events / Napalm Records' ORDER BY id LIMIT 1),
  'Metal On The Hill',
  'Graz',
  'heavy metal, power metal, melodic death metal, metalcore',
  'medium',
  'https://www.metal-on-the-hill.com/',
  'https://www.instagram.com/metalonthehill/',
  'https://www.facebook.com/metalonthehill/',
  'https://www.metal-on-the-hill.com/',
  'Excellent historical genre fit but currently not actionable.',
  'SNS-131',
  'castle-hill metal festival',
  'medium'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'dormant/unconfirmed',
  'last clearly documented editions preceded 2026; no active 2026 edition verified', 'None while dormant.', NULL
FROM festivals WHERE external_id = 'SNS-131';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 83,
  25, 15, 12.6,
  9, 6.4, 6.8,
  8.2, 'D', 'Low',
  'Monitor', 'Extensive international history.',
  NULL, 'Excellent historical genre fit but currently not actionable.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 136,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-131';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.metal-on-the-hill.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-131';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/metalonthehill/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-131';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Napalm Events / Napalm Records', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/metalonthehill/',
  'https://www.facebook.com/metalonthehill/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-131'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Do not treat as an active opportunity; ask Napalm Events only if a revival is announced.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-131'
  AND festival_editions.edition_year = 2027;

-- SNS-132: Los Almiros Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Los Almiros Festival / local volunteer team' ORDER BY id LIMIT 1),
  'Los Almiros Festival',
  'Almyros, Magnesia',
  'stoner rock, alternative rock, punk, heavy rock',
  'medium when active',
  NULL,
  'https://www.instagram.com/losalmirosfestival/',
  'https://www.facebook.com/LosAlmirosFestival/',
  'https://www.setlist.fm/festivals/los-almiros-festival-53d6f7cd.html',
  'Status risk. Musically more stoner/punk than melodic metal, though the free camping format could suit a route date if revived.',
  'SNS-132',
  'Free independent forest/camping rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant/unconfirmed; no 2024-2026 edition verified',
  '2-5 August 2023 (last clearly verified edition)', 'Status check in early 2027.', NULL
FROM festivals WHERE external_id = 'SNS-132';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 80,
  25, 12, 12.6,
  6, 6.4, 8.6,
  9, 'D', 'Low',
  'Monitor', 'Yes when active',
  '1000mods, Nightstalker, Planet of Zeus, Stoned Jesus, Los Fastidios', 'Status risk. Musically more stoner/punk than melodic metal, though the free camping format could suit a route date if revived.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 137,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-132';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.setlist.fm/festivals/los-almiros-festival-53d6f7cd.html', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-132';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/LosAlmirosFestival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-132';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Los Almiros Festival / local volunteer team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/losalmirosfestival/',
  'https://www.facebook.com/LosAlmirosFestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-132'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Do not send a full commercial offer until revival is confirmed; first ask the official page whether a new edition is planned.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-132'
  AND festival_editions.edition_year = 2027;

-- SNS-133: Kavarna Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Historically Kavarna Municipality and Loud Concerts' ORDER BY id LIMIT 1),
  'Kavarna Rock Fest',
  'Kavarna',
  'hard rock, heavy metal',
  'large',
  NULL,
  NULL,
  'https://www.facebook.com/kavarnarockfest/',
  'https://www.facebook.com/kavarnarockfest/',
  'Historically perfect fit, but the festival is dormant and should not consume outreach time.',
  'SNS-133',
  'former municipal international rock festival',
  'large'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'dormant',
  'Last edition 1-3 July 2016', 'Not applicable while dormant', NULL
FROM festivals WHERE external_id = 'SNS-133';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 1, 75,
  21, 12, 7.5,
  6, 8.8, 10,
  10, 'D', 'Low',
  'Monitor', 'yes',
  'Helloween, Accept, Primal Fear, Kamelot, Axel Rudi Pell', 'Historically perfect fit, but the festival is dormant and should not consume outreach time.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 138,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-133';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/kavarnarockfest/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-133';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.setlist.fm/festivals/kavarna-rock-fest-63d6be1f.html', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-133';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Historically Kavarna Municipality and Loud Concerts', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/kavarnarockfest/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-133'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Do not treat as a live lead; monitor only for an official municipal revival.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-133'
  AND festival_editions.edition_year = 2027;

-- SNS-134: Topfest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Former Topfest organization; current rights/contact unclear' ORDER BY id LIMIT 1),
  'Topfest',
  'Piestany / changing site',
  'rock, hard rock, metal',
  'large',
  NULL,
  NULL,
  'https://www.facebook.com/topfestofficial/',
  'https://www.topfest.sk/',
  'Hold. The former topfest.sk domain is no longer a trustworthy festival source.',
  'SNS-134',
  'rock festival',
  'large'
FROM countries
WHERE countries.name = 'Slovakia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant/unverified; do not contact through old domain',
  'Historic annual festival; current domain now contains unrelated casino content', NULL, NULL
FROM festivals WHERE external_id = 'SNS-134';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 1, 75,
  21, 15, 7.5,
  6, 8, 7.2,
  10, 'D', 'Low',
  'Monitor', 'Historically extensive',
  NULL, 'Hold. The former topfest.sk domain is no longer a trustworthy festival source.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 139,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-134';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.topfest.sk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-134';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/topfestofficial/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-134';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Former Topfest organization; current rights/contact unclear', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/topfestofficial/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-134'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'No outreach until an official new edition and organizer identity are verified', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-134'
  AND festival_editions.edition_year = 2027;

-- SNS-135: Open the Gates Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Independent traditional-metal promoters' ORDER BY id LIMIT 1),
  'Open the Gates Festival',
  'Athens / Piraeus',
  'heavy metal, epic metal, power metal, doom metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/OpenTheGatesFestival/',
  'https://www.facebook.com/OpenTheGatesFestival/',
  'Strong historical genre fit but uncertain status. Secondary research lead, not part of the first booking wave.',
  'SNS-135',
  'Indoor underground heavy-metal mini-festival',
  'small'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unconfirmed / possibly dormant',
  'Historic/irregular; no 2026 edition reliably confirmed', 'None until active announcement.', NULL
FROM festivals WHERE external_id = 'SNS-135';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 72,
  25, 12, 11.1,
  6, 4, 8.6,
  5, 'D', 'Low',
  'Monitor', 'Yes when active',
  'underground European traditional/epic-metal bands', 'Strong historical genre fit but uncertain status. Secondary research lead, not part of the first booking wave.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 140,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-135';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/OpenTheGatesFestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-135';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Independent traditional-metal promoters', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/OpenTheGatesFestival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-135'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Status-check DM only; do not send a priced offer until a new edition is confirmed.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-135'
  AND festival_editions.edition_year = 2027;

-- SNS-136: Lake on Fire Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Lake on Fire Festival / Stoner Rock Austria' ORDER BY id LIMIT 1),
  'Lake on Fire Festival',
  'Waldhausen im Strudengau',
  'stoner rock, psychedelic rock, doom, heavy rock',
  'small; approximately 1,100 attendees according to a longtime stage manager''s public profile',
  'https://www.lakeonfirefestival.com/',
  NULL,
  'https://www.facebook.com/LOF.festival/',
  'https://www.lakeonfirefestival.com/',
  'C-priority due to stoner/psych emphasis; potentially suitable only with a heavier classic-rock pitch if revived.',
  'SNS-136',
  'lakeside stoner/psychedelic rock festival',
  'small'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed/dormant lead',
  'historic recurring summer event; no current 2026/2027 edition verified', 'Unknown.', NULL
FROM festivals WHERE external_id = 'SNS-136';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 71,
  15, 15, 11.1,
  9, 4, 6.8,
  9.6, 'D', 'Low',
  'Monitor', 'Strong international history.',
  'Red Fang, Colour Haze, My Sleeping Karma, Earthless, Graveyard, Uncle Acid & the Deadbeats', 'C-priority due to stoner/psych emphasis; potentially suitable only with a heavier classic-rock pitch if revived.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 141,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-136';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.lakeonfirefestival.com/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-136';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/LOF.festival/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-136';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Lake on Fire Festival / Stoner Rock Austria', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/LOF.festival/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-136'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Ask the official page whether the event will return; no active application route verified.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-136'
  AND festival_editions.edition_year = 2027;

-- SNS-137: Metal Rites Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Historic independent promoter at Kyttaro' ORDER BY id LIMIT 1),
  'Metal Rites Festival',
  'Athens',
  'traditional heavy metal, power metal, speed metal',
  'small',
  NULL,
  NULL,
  NULL,
  'https://metalinvader.net/el/metal-rites-festival-jag-panzer-adx-crying-steel-mortician-war-dance-lord-fist-27-09-2015-kyttaro-athens/',
  'Excellent historical fit but inactive; retained to prevent confusing old search results with a current opportunity.',
  'SNS-137',
  'Indoor traditional-metal mini-festival',
  'small'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant',
  '27 September 2015 (last clearly documented edition found)', 'None', NULL
FROM festivals WHERE external_id = 'SNS-137';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 70,
  25, 12, 11.1,
  0, 4, 8.6,
  9, 'D', 'Low',
  'Monitor', 'Yes in documented edition',
  'Jag Panzer, ADX, Crying Steel, Mortician, Lord Fist', 'Excellent historical fit but inactive; retained to prevent confusing old search results with a current opportunity.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 142,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-137';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://metalinvader.net/el/metal-rites-festival-jag-panzer-adx-crying-steel-mortician-war-dance-lord-fist-27-09-2015-kyttaro-athens/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-137';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'No current application path. Do not treat as active; historical organizer network may overlap with Athens traditional-metal promoters.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-137'
  AND festival_editions.edition_year = 2027;

-- SNS-138: Saristra Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Saristra Festival team' ORDER BY id LIMIT 1),
  'Saristra Festival',
  'Old Vlachata, Kefalonia',
  'alternative rock, indie, psychedelic, electronic, arts',
  'small-medium',
  NULL,
  'https://www.instagram.com/saristrafestival/',
  'https://www.facebook.com/SaristraFestival/',
  'https://www.facebook.com/SaristraFestival/',
  'Low genre fit and dormant status. Included because it is a notable small island/village festival, but not a current Saints ''N'' Sinners priority.',
  'SNS-138',
  'Independent island/village alternative festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Greece';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant/unconfirmed',
  '29-31 July 2022 (last clearly verified full edition)', 'None until an edition is announced.', NULL
FROM festivals WHERE external_id = 'SNS-138';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 67,
  15, 12, 12.6,
  6, 6.4, 7,
  8.2, 'D', 'Low',
  'Monitor', 'International/Greek alternative programming when active',
  'The Bonnie Nettles, Greek indie and experimental acts', 'Low genre fit and dormant status. Included because it is a notable small island/village festival, but not a current Saints ''N'' Sinners priority.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 143,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-138';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/SaristraFestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-138';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.youtube.com/watch?v=svaY31gLhFk', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-138';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Saristra Festival team', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/saristrafestival/',
  'https://www.facebook.com/SaristraFestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-138'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'First confirm revival through official social channels; not currently a live booking target.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-138'
  AND festival_editions.edition_year = 2027;

-- SNS-139: Skopje Beer Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Password Production / Skopje Beer Fest brand' ORDER BY id LIMIT 1),
  'Skopje Beer Fest',
  'Skopje',
  'rock, alternative, pop, reggae',
  'medium',
  'https://skopjebeerfest.mk/',
  NULL,
  'https://www.facebook.com/SkopjeBeerFest/',
  'https://password.mk/',
  'Good theoretical fit but inactive/unconfirmed; promoter relationship remains worth pursuing through Taksirat/D Festival instead.',
  'SNS-139',
  'Beer festival with live rock/pop programme',
  'medium'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant/unconfirmed',
  'Latest clearly indexed official social activity in reviewed sources was 2019; Password Production still lists the festival brand', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-139';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 66,
  15, 3, 12.6,
  12, 6.4, 9.4,
  7.6, 'D', 'Low',
  'Monitor', 'true',
  'Let 3, Conquering Lion', 'Good theoretical fit but inactive/unconfirmed; promoter relationship remains worth pursuing through Taksirat/D Festival instead.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 144,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-139';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://password.mk/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-139';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/SkopjeBeerFest/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-139';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Password Production / Skopje Beer Fest brand', 'Festival booking contact',
  'info@password.mk', NULL, NULL,
  'https://www.facebook.com/SkopjeBeerFest/', 'email', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-139'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'First ask Password Production whether the brand will return; do not treat it as an active 2027 application until confirmed.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-139'
  AND festival_editions.edition_year = 2027;

-- SNS-140: RockBalaton
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'RockBalaton' ORDER BY id LIMIT 1),
  'RockBalaton',
  'Fonyód',
  'hard rock, heavy metal, Hungarian rock',
  'small-medium',
  NULL,
  NULL,
  'https://www.facebook.com/rockbalaton/',
  'https://www.facebook.com/rockbalaton/',
  'Good stylistic/route fit near TÁBOR, but not a confirmed active 2027 target.',
  'SNS-140',
  'Balaton-area open-air rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Hungary';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed/dormant lead',
  'historically held in summer; current 2026 edition not reliably confirmed', 'Unknown.', NULL
FROM festivals WHERE external_id = 'SNS-140';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 63,
  21, 1.5, 12.6,
  6, 6.4, 8,
  7.6, 'D', 'Low',
  'Monitor', 'Not verified; historically Hungarian-heavy.',
  NULL, 'Good stylistic/route fit near TÁBOR, but not a confirmed active 2027 target.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 145,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-140';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/rockbalaton/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-140';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'RockBalaton', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/rockbalaton/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-140'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Ask the official page whether programming continues; do not send commercial terms until the event is reconfirmed.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-140'
  AND festival_editions.edition_year = 2027;

-- SNS-141: Top T Buzău
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Top T/local cultural partners' ORDER BY id LIMIT 1),
  'Top T Buzău',
  'Buzău',
  'rock, hard rock, progressive rock',
  'small-medium',
  NULL,
  NULL,
  NULL,
  'https://www.facebook.com/search/top?q=Top%20T%20Buzau',
  'Historically relevant but not yet an actionable booking lead.',
  'SNS-141',
  'historic local rock festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Romania';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Long-running event; no confirmed 2026/2027 edition found in this pass', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-141';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 60,
  21, 3, 12.6,
  0, 6.4, 9,
  7.6, 'D', 'Low',
  'Monitor', 'unconfirmed',
  NULL, 'Historically relevant but not yet an actionable booking lead.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 146,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-141';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/search/top?q=Top%20T%20Buzau', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-141';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Status-check through Buzău cultural authorities/local rock community before any EPK submission.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-141'
  AND festival_editions.edition_year = 2027;

-- SNS-142: Moto Skup MC Rocker
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'MC Rocker' ORDER BY id LIMIT 1),
  'Moto Skup MC Rocker',
  'Alibegovac',
  'rock, hard rock, biker rock',
  'small-medium',
  NULL,
  NULL,
  NULL,
  'https://www.instagram.com/reel/DasjR6yoo02/',
  'High fit for classic heavy/hard rock. Confirm exact location, stage specification and fee before holding dates.',
  'SNS-142',
  'Motorcycle rally with rock concerts',
  'small-medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; described as established/legendary gathering',
  '17-19 July 2026', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-142';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 60,
  21, 3, 12.6,
  0, 6.4, 9.4,
  7.6, 'D', 'Low',
  'Monitor', NULL,
  NULL, 'High fit for classic heavy/hard rock. Confirm exact location, stage specification and fee before holding dates.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 147,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-142';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/reel/DasjR6yoo02/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-142';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'DM MC Rocker through its current social page; no verified email was available in the public listing.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-142'
  AND festival_editions.edition_year = 2027;

-- SNS-143: Moto Susret - Moto Kamp Panter
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Moto Kamp Panter Apatin' ORDER BY id LIMIT 1),
  'Moto Susret - Moto Kamp Panter',
  'Apatin',
  'rock, hard rock, biker rock',
  'small-medium',
  NULL,
  NULL,
  NULL,
  'https://www.facebook.com/61576532609480/videos/-21-moto-susret-%EF%B8%8F-moto-kamp-panter-apatin-2606-28062026-petak-i-subotasezona-mot/1651869759463920/',
  'High biker-event fit. Best as part of a northern Serbia/Croatia/Hungary route.',
  'SNS-143',
  'Motorcycle rally with live rock',
  'small-medium'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; long-running',
  '26-28 June 2026 (21st meeting)', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-143';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 60,
  21, 3, 12.6,
  0, 6.4, 9.4,
  7.6, 'D', 'Low',
  'Monitor', NULL,
  NULL, 'High biker-event fit. Best as part of a northern Serbia/Croatia/Hungary route.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 148,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-143';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/61576532609480/videos/-21-moto-susret-%EF%B8%8F-moto-kamp-panter-apatin-2606-28062026-petak-i-subotasezona-mot/1651869759463920/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-143';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact the club through its current Facebook event/page; no verified email or phone was found in the reviewed public post.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-143'
  AND festival_editions.edition_year = 2027;

-- SNS-144: Niech Cisza Milczy
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Niech Cisza Milczy festival team' ORDER BY id LIMIT 1),
  'Niech Cisza Milczy',
  'Pyskowice',
  'metal, heavy metal, extreme metal',
  'small-medium regional',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/niech-cisza-milczy-12/1559',
  'High target priority: 12 editions, metal-specific, free open air. Ask for a traditional/melodic metal slot and clarify whether international travel support is available.',
  'SNS-144',
  'free open-air metal festival',
  'small-medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; strongly recurring',
  '14-15 August 2026 (12th edition)', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-144';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 59,
  25, 1.5, 12.6,
  0, 6.4, 6,
  7.6, 'D', 'Low',
  'Monitor', 'not verified',
  NULL, 'High target priority: 12 editions, metal-specific, free open air. Ask for a traditional/melodic metal slot and clarify whether international travel support is available.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 149,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-144';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/niech-cisza-milczy-12/1559', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-144';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct social-media curation; no public form or direct contact verified in the listing.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-144'
  AND festival_editions.edition_year = 2027;

-- SNS-145: Moto Skup Rumenka
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local motorcycle organizers in Rumenka' ORDER BY id LIMIT 1),
  'Moto Skup Rumenka',
  'Rumenka (Novi Sad)',
  'rock, hard rock, biker rock',
  'small',
  NULL,
  NULL,
  NULL,
  'https://rtv.rs/sr_lat/mladi/gde-otici/moto-skup-u-rumenki-ovog-vikenda-vise-od-druzenja-prioritet-je-bezbednost-na-putu_1737456.html',
  'Good small biker-show fit, but likely limited fee. Route with Novi Sad/Belgrade dates.',
  'SNS-145',
  'Local motorcycle rally with multiple rock bands',
  'small'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced',
  'August 2026', 'Winter-spring recommended', NULL
FROM festivals WHERE external_id = 'SNS-145';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 58,
  21, 3, 11.1,
  0, 4, 9.4,
  9, 'D', 'Low',
  'Monitor', 'false',
  'Rahela Bend, Maršal, Nostradamus, Rok Apoteka, Turbo Dizel', 'Good small biker-show fit, but likely limited fee. Route with Novi Sad/Belgrade dates.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 150,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-145';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rtv.rs/sr_lat/mladi/gde-otici/moto-skup-u-rumenki-ovog-vikenda-vise-od-druzenja-prioritet-je-bezbednost-na-putu_1737456.html', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-145';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the next official event listing or local organiser page; no verified direct contact was public in the source.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-145'
  AND festival_editions.edition_year = 2027;

-- SNS-146: Rock Fest / Pop Rock Fest Skopje
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  NULL,
  'Rock Fest / Pop Rock Fest Skopje',
  'Skopje',
  'rock, hard rock, pop rock',
  'small showcase',
  NULL,
  NULL,
  NULL,
  'https://en.wikipedia.org/wiki/Area_(Macedonian_band)',
  'Included for historical completeness only; not an actionable lead as of verification date.',
  'SNS-146',
  'Historic competition/showcase for emerging Macedonian rock bands',
  'small'
FROM countries
WHERE countries.name = 'North Macedonia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant/unverified',
  'Historic event; no active 2026 edition verified', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-146';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 57,
  21, 3, 11.1,
  0, 4, 9.4,
  8, 'D', 'Low',
  'Monitor', 'false',
  'Area, Vodolija, Last Expedition', 'Included for historical completeness only; not an actionable lead as of verification date.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 151,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-146';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://en.wikipedia.org/wiki/Area_(Macedonian_band)', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-146';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://en.wikipedia.org/wiki/Vodolija', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-146';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'No outreach until a new official edition is announced.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-146'
  AND festival_editions.edition_year = 2027;

-- SNS-147: Dark Side Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'local festival team/municipal partners; exact entity not verified' ORDER BY id LIMIT 1),
  'Dark Side Festival',
  'Gubin',
  'metal, death metal, black metal, hardcore',
  'small regional',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/dark-side-festival-2026/1701',
  'Medium fit; heavier than the band, but a free city-square event can use a melodic/traditional metal act. Excellent German-border routing potential.',
  'SNS-147',
  'free municipal square metal festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  '24-25 July 2026', 'Recommended September-December 2026', NULL
FROM festivals WHERE external_id = 'SNS-147';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 57,
  25, 1.5, 11.1,
  0, 4.8, 6,
  9, 'D', 'Low',
  'Monitor', 'not verified',
  'Hostia, Czarny Bez, Ballkick, Godslut, Supreme Void, In The Name Of God', 'Medium fit; heavier than the band, but a free city-square event can use a melodic/traditional metal act. Excellent German-border routing potential.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 152,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-147';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/dark-side-festival-2026/1701', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-147';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact Gubin cultural office or the official event social page; no public application form found.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-147'
  AND festival_editions.edition_year = 2027;

-- SNS-148: Materiafest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Materiafest team' ORDER BY id LIMIT 1),
  'Materiafest',
  'Szczecinek',
  'metal, heavy metal, death metal, alternative metal',
  'small-medium national',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/materiafest-2026/1193',
  'High priority because it has a formal band contest and 14-edition continuity. Verify whether foreign professional bands are eligible; otherwise approach for invited main-stage slot.',
  'SNS-148',
  'two-day independent metal festival with band contest',
  'small-medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; strongly recurring',
  '28-29 August 2026 (14th edition)', 'Monitor from autumn 2026; contest likely opens months before August', NULL
FROM festivals WHERE external_id = 'SNS-148';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 57,
  21, 1.5, 12.6,
  0, 6.4, 6,
  9, 'D', 'Low',
  'Monitor', 'not verified',
  'Vader, Lipali, Blindead 23, Ironbound, Transgresja', 'High priority because it has a formal band contest and 14-edition continuity. Verify whether foreign professional bands are eligible; otherwise approach for invited main-stage slot.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 153,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-148';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/materiafest-2026/1193', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-148';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Monitor the official social page for the band contest/open call; the 2026 edition explicitly included a ''konkurs kapel''.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-148'
  AND festival_editions.edition_year = 2027;

-- SNS-149: Sea of Black Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Sea of Black team/local partners' ORDER BY id LIMIT 1),
  'Sea of Black Festival',
  'Burgas',
  'death metal, black metal, extreme metal',
  'medium',
  NULL,
  NULL,
  NULL,
  'https://radiotangra.com/en/novina/the-burgas-sea-of-black-festival-to-skip-this-years-editions/',
  'C-priority: status uncertain and genre is substantially more extreme.',
  'SNS-149',
  'free extreme-metal open-air festival',
  'medium'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  'Skipped 2025 for reorganization; no confirmed 2026 edition found', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-149';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 56,
  7.5, 12, 12.6,
  0, 6.4, 10,
  7.6, 'D', 'Low',
  'Monitor', 'yes',
  NULL, 'C-priority: status uncertain and genre is substantially more extreme.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 154,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-149';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://radiotangra.com/en/novina/the-burgas-sea-of-black-festival-to-skip-this-years-editions/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-149';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Monitor for relaunch before pitching; no current booking channel verified in this pass.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-149'
  AND festival_editions.edition_year = 2027;

-- SNS-150: Rock Fest Knezha
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local/municipal partners' ORDER BY id LIMIT 1),
  'Rock Fest Knezha',
  'Knezha',
  'rock, hard rock',
  'small',
  NULL,
  NULL,
  NULL,
  'https://seviband.com/js_events/sevi-live-rock-fest-knezha/',
  'Good stylistic fit, but not an active lead until a new edition is confirmed.',
  'SNS-150',
  'municipal/local rock festival',
  'small'
FROM countries
WHERE countries.name = 'Bulgaria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'unconfirmed',
  '20 July 2024 last clearly traceable edition', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-150';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 55,
  21, 3, 11.1,
  0, 4.8, 10,
  5, 'D', 'Low',
  'Monitor', 'unconfirmed',
  'SEVI', 'Good stylistic fit, but not an active lead until a new edition is confirmed.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 155,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-150';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://seviband.com/js_events/sevi-live-rock-fest-knezha/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-150';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Confirm revival with Knezha Municipality before sending EPK.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-150'
  AND festival_editions.edition_year = 2027;

-- SNS-151: Ranč Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Pavlović Ranch / independent organisers' ORDER BY id LIMIT 1),
  'Ranč Fest',
  'Požega / Pavlović Ranch area',
  'original rock, alternative, hard rock',
  'very small',
  NULL,
  NULL,
  NULL,
  'https://highwaystarmagazine.org/vodic-kroz-festivale-u-srbiji/',
  'Included to preserve a genuinely small lead; status is too uncertain for active outreach.',
  'SNS-151',
  'Guerrilla-style independent ranch rock festival',
  'micro'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Dormant/unverified',
  'Last clearly indexed description dates from the early 2020s; current 2026 edition not verified', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-151';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 54,
  21, 3, 11.1,
  0, 4, 9.4,
  5, 'D', 'Low',
  'Monitor', NULL,
  NULL, 'Included to preserve a genuinely small lead; status is too uncertain for active outreach.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 156,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-151';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://highwaystarmagazine.org/vodic-kroz-festivale-u-srbiji/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-151';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Do not contact until an active current event page is identified.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-151'
  AND festival_editions.edition_year = 2027;

-- SNS-152: Rock Garden Music Festival & Moto Skup
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Local Rock Garden/SKC and moto organizers' ORDER BY id LIMIT 1),
  'Rock Garden Music Festival & Moto Skup',
  'Kragujevac',
  'rock, hard rock, biker rock',
  'small',
  NULL,
  NULL,
  NULL,
  'https://www.facebook.com/dejan.lukovic.9421/videos/08082026plato-skcrock-gardenmusic-festival-moto-skup/1639978517736123/',
  'High stylistic fit but contact quality is weak. Keep as a lead requiring manual social verification before outreach.',
  'SNS-152',
  'Rock mini-festival combined with motorcycle gathering',
  'small'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced',
  '8 August 2026, SKC plateau', 'Unknown; begin enquiry in autumn', NULL
FROM festivals WHERE external_id = 'SNS-152';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 54,
  21, 3, 11.1,
  0, 4, 9.4,
  5, 'D', 'Low',
  'Monitor', NULL,
  NULL, 'High stylistic fit but contact quality is weak. Keep as a lead requiring manual social verification before outreach.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 157,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-152';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/dejan.lukovic.9421/videos/08082026plato-skcrock-gardenmusic-festival-moto-skup/1639978517736123/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-152';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'No verified direct booking contact found; use the current event/venue social page once the next edition is announced.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-152'
  AND festival_editions.edition_year = 2027;

-- SNS-153: Ciosaniec Festiwal
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Ciosaniec Festiwal team' ORDER BY id LIMIT 1),
  'Ciosaniec Festiwal',
  'Ciosaniec',
  'rock, heavy metal, stoner metal, metalcore',
  'small regional',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/ciosaniec-festiwal-2026/1758',
  'High fit for a compact 45-60 minute melodic heavy set. Camping infrastructure and seven editions indicate operational continuity; budget must be checked early.',
  'SNS-153',
  'rural camping rock/metal festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; strongly recurring',
  '24-25 July 2026 (7th edition)', 'Recommended September-December 2026', NULL
FROM festivals WHERE external_id = 'SNS-153';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 53,
  21, 1.5, 11.1,
  0, 4, 6,
  9, 'D', 'Low',
  'Monitor', 'not verified',
  'Frontside, Corruption, Over the Under, Imperial Sin, Black Star Mantra', 'High fit for a compact 45-60 minute melodic heavy set. Camping infrastructure and seven editions indicate operational continuity; budget must be checked early.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 158,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-153';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/ciosaniec-festiwal-2026/1758', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-153';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct social-media pitch; no public form or verified email located.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-153'
  AND festival_editions.edition_year = 2027;

-- SNS-154: Chapter Pirot Moto Gathering
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Chapter Pirot motorcycle community' ORDER BY id LIMIT 1),
  'Chapter Pirot Moto Gathering',
  'Dojkinci, Stara Planina (Pirot)',
  'rock, hard rock, biker rock',
  'small',
  NULL,
  NULL,
  NULL,
  'https://www.instagram.com/p/DakvHdmMy21/',
  'Very good route fit from Bulgaria to Serbia and naturally aligned with Saints ''N'' Sinners. Verify production/backline capacity early.',
  'SNS-154',
  'Mountain motorcycle gathering with rock programme',
  'small'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced',
  '10-12 July 2026', 'Autumn-winter recommended', NULL
FROM festivals WHERE external_id = 'SNS-154';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 53,
  21, 3, 11.1,
  0, 4.8, 7.8,
  5, 'D', 'Low',
  'Monitor', NULL,
  NULL, 'Very good route fit from Bulgaria to Serbia and naturally aligned with Saints ''N'' Sinners. Verify production/backline capacity early.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 159,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-154';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/p/DakvHdmMy21/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-154';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact Chapter Pirot through the Instagram account/post; request the music programme coordinator.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-154'
  AND festival_editions.edition_year = 2027;

-- SNS-155: Sick Midsummer Festival
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Sick Midsummer Festival' ORDER BY id LIMIT 1),
  'Sick Midsummer Festival',
  'Scharnstein',
  'black metal, death metal',
  'small specialist festival',
  NULL,
  'https://www.instagram.com/sickmidsummer_official/',
  'https://www.facebook.com/sickmidsummerfestival/',
  'https://www.facebook.com/sickmidsummerfestival/',
  'Not actionable and stylistically poor fit.',
  'SNS-155',
  'extreme-metal open air',
  'small'
FROM countries
WHERE countries.name = 'Austria';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'ended/dormant; official page states 2026 was the final edition',
  'final edition in summer 2026', 'Closed permanently unless organizers announce a revival.', NULL
FROM festivals WHERE external_id = 'SNS-155';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 52,
  7.5, 12, 11.1,
  6, 4, 6.8,
  5, 'D', 'Low',
  'Monitor', 'Yes.',
  'RUÏM', 'Not actionable and stylistically poor fit.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 160,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-155';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/sickmidsummerfestival/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-155';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.instagram.com/sickmidsummer_official/', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-155';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'Sick Midsummer Festival', 'Festival booking contact',
  NULL, NULL, 'https://www.instagram.com/sickmidsummer_official/',
  'https://www.facebook.com/sickmidsummerfestival/', 'instagram', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-155'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Do not apply; retained only to prevent wasted outreach and duplicate research.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-155'
  AND festival_editions.edition_year = 2027;

-- SNS-156: Cieszanów Rock Festiwal
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Cieszanów Rock Festiwal / municipal and production partners' ORDER BY id LIMIT 1),
  'Cieszanów Rock Festiwal',
  'Cieszanów',
  'rock, punk, alternative, metal',
  'medium national',
  NULL,
  NULL,
  NULL,
  'https://rzeszow.tvp.pl/94870277/cieszanow-rock-festiwal-6',
  'A stretch target: larger and more competitive than most pilot records, with punk/alternative emphasis. Worth a professional support-slot pitch, not a casual DM.',
  'SNS-156',
  'town rock festival',
  'medium'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; established recurring festival',
  'August 2026 (active edition verified)', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-156';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 50,
  15, 1.5, 12.6,
  0, 7.2, 6,
  7.6, 'D', 'Low',
  'Monitor', 'not verified in this pass',
  'Farben Lehre', 'A stretch target: larger and more competitive than most pilot records, with punk/alternative emphasis. Worth a professional support-slot pitch, not a casual DM.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 161,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-156';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://rzeszow.tvp.pl/94870277/cieszanow-rock-festiwal-6', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-156';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.youtube.com/watch?v=S-FA62KyNlI', 2, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-156';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Curated festival; identify current booking office through official social channels. No open band form verified in this pass.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-156'
  AND festival_editions.edition_year = 2027;

-- SNS-157: Rozłupnia Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Rozłupnia Fest / Zagroda na Zadupiu' ORDER BY id LIMIT 1),
  'Rozłupnia Fest',
  'Sycyn',
  'groove metal, death metal, heavy metal',
  'micro/DIY',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/roz%C5%82upnia-fest-2026/1424',
  'High accessibility but likely low budget. Foreign-band precedent is valuable; best only as part of a Poland/Czech route with shared backline.',
  'SNS-157',
  'DIY rural one-day metal festival',
  'micro'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  '4 July 2026 (2nd edition)', 'Recommended September 2026-January 2027', NULL
FROM festivals WHERE external_id = 'SNS-157';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 50,
  21, 3, 11.1,
  0, 4, 6,
  5, 'D', 'Low',
  'Monitor', 'verified: Archeonic from Czechia in 2026',
  'Archeonic, Dammnatorum', 'High accessibility but likely low budget. Foreign-band precedent is valuable; best only as part of a Poland/Czech route with shared backline.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 162,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-157';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/roz%C5%82upnia-fest-2026/1424', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-157';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact the event/venue social page; no application form or direct email was publicly verified.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-157'
  AND festival_editions.edition_year = 2027;

-- SNS-158: Hell in the Shell
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Hell in the Shell team / local amphitheatre partners' ORDER BY id LIMIT 1),
  'Hell in the Shell',
  'Sosnowiec',
  'metal, heavy metal',
  'small regional',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/hell-in-the-shell-2026/1563',
  'High basic genre fit and useful Silesian location. Needs contact validation before campaign inclusion.',
  'SNS-158',
  'one-day amphitheatre metal festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; recurring/rebranded from Metal Fest',
  '22 August 2026', 'Recommended September-November 2026', NULL
FROM festivals WHERE external_id = 'SNS-158';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 49,
  21, 1.5, 11.1,
  0, 4, 6,
  5, 'D', 'Low',
  'Monitor', 'not verified',
  NULL, 'High basic genre fit and useful Silesian location. Needs contact validation before campaign inclusion.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 163,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-158';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/hell-in-the-shell-2026/1563', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-158';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Find official event social page through listing and request booking contact; no open form found.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-158'
  AND festival_editions.edition_year = 2027;

-- SNS-159: Trve Metal Camp
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Trve Metal Camp team' ORDER BY id LIMIT 1),
  'Trve Metal Camp',
  'Bogusławice / Wolbórz',
  'heavy metal, underground metal, jam',
  'micro/DIY',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/trve-metal-camp-2026/1516',
  'Strong genre fit but extremely small and raw; likely unsuitable as a standalone international booking. Consider only as an off-day/camp date with shared gear.',
  'SNS-159',
  'micro camping metal gathering',
  'micro'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; recurring',
  '22 August 2026 (6th edition)', 'Recommended September 2026-January 2027', NULL
FROM festivals WHERE external_id = 'SNS-159';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 49,
  21, 1.5, 11.1,
  0, 4, 6,
  5, 'D', 'Low',
  'Monitor', 'not verified',
  NULL, 'Strong genre fit but extremely small and raw; likely unsuitable as a standalone international booking. Consider only as an off-day/camp date with shared gear.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 164,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-159';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/trve-metal-camp-2026/1516', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-159';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Direct social contact only; no public application channel verified.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-159'
  AND festival_editions.edition_year = 2027;

-- SNS-160: Nature Rock Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Nature Rock Fest team' ORDER BY id LIMIT 1),
  'Nature Rock Fest',
  'Podpniewki (near Pniewy)',
  'metal, rock, hardcore',
  'micro/small DIY',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/nature-rock-fest-2026/1928',
  'Good stylistic fit but likely hospitality/door-share level. Suitable only with another nearby paid date.',
  'SNS-160',
  'free rural open-air metal festival',
  'micro'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; strongly recurring',
  '24-25 July 2026 (7th edition)', 'Recommended September 2026-January 2027', NULL
FROM festivals WHERE external_id = 'SNS-160';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 47,
  15, 1.5, 11.1,
  0, 4, 6,
  9, 'D', 'Low',
  'Monitor', 'not verified',
  'Aversja, HellRose, Dyerscate, Keg Thrower, Szamara', 'Good stylistic fit but likely hospitality/door-share level. Suitable only with another nearby paid date.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 165,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-160';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/nature-rock-fest-2026/1928', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-160';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Social-media curation; locate the official page from the event listing and submit a compact EPK/route offer.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-160'
  AND festival_editions.edition_year = 2027;

-- SNS-161: Żmigrock – Żmigrodzki Festiwal Rockowy
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'local Żmigród festival team; exact legal entity not verified' ORDER BY id LIMIT 1),
  'Żmigrock – Żmigrodzki Festiwal Rockowy',
  'Żmigród',
  'rock, punk rock, metal',
  'small regional',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/%C5%BCmigrock-2026/1294',
  'Medium-high fit for a compact town event; offer a festival-friendly 45-minute set and all-in routing quote.',
  'SNS-161',
  'small-town palace-park rock festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; recurring young festival',
  '3-5 July 2026 (3rd edition)', 'Recommended September-December 2026', NULL
FROM festivals WHERE external_id = 'SNS-161';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 46,
  15, 1.5, 11.1,
  0, 4.8, 6,
  8, 'D', 'Low',
  'Monitor', 'not verified',
  'Zenek Grabowski, Ga-Ga Zielone Żabki, Noctulis, In the Name of God', 'Medium-high fit for a compact town event; offer a festival-friendly 45-minute set and all-in routing quote.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 166,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-161';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/%C5%BCmigrock-2026/1294', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-161';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Use the event social link carried by the listing or contact Żmigród cultural centre; no public form found.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-161'
  AND festival_editions.edition_year = 2027;

-- SNS-162: South of Heaven Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'South of Heaven team' ORDER BY id LIMIT 1),
  'South of Heaven Open Air',
  'Zbytiny',
  'death metal, black metal, thrash metal',
  'small',
  NULL,
  NULL,
  'https://www.facebook.com/SouthOfHeavenOpenAir/',
  'https://www.facebook.com/SouthOfHeavenOpenAir/',
  'C/D-priority due to extreme orientation; retain only for route-fill possibilities.',
  'SNS-162',
  'village underground metal festival',
  'small'
FROM countries
WHERE countries.name = 'Czechia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Unannounced',
  'Annual summer edition', 'Autumn', NULL
FROM festivals WHERE external_id = 'SNS-162';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 43,
  7.5, 3, 11.1,
  6, 4, 6.8,
  5, 'C', 'Medium',
  'Monitor', 'Underground cross-border acts',
  NULL, 'C/D-priority due to extreme orientation; retain only for route-fill possibilities.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 167,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-162';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.facebook.com/SouthOfHeavenOpenAir/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-162';

INSERT INTO contacts (
  festival_id, organizer_id, name, role, email, phone,
  instagram_handle, facebook_url, preferred_channel, verified_at, notes
)
SELECT
  festivals.id, festivals.organizer_id, 'South of Heaven team', 'Festival booking contact',
  NULL, NULL, NULL,
  'https://www.facebook.com/SouthOfHeavenOpenAir/', 'facebook', '2026-09-19', NULL
FROM festivals
WHERE festivals.external_id = 'SNS-162'
  AND NOT EXISTS (
    SELECT 1 FROM contacts WHERE contacts.festival_id = festivals.id
  );

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Facebook DM', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-162'
  AND festival_editions.edition_year = 2027;

-- SNS-163: 666 United Metal Fest
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = '666 United Metal Fest / Pałac w Łęce Wielkiej' ORDER BY id LIMIT 1),
  '666 United Metal Fest',
  'Łęka Wielka',
  'black metal, death metal, doom metal',
  'small underground',
  NULL,
  NULL,
  NULL,
  'https://hellshorde.com/event/666-united-metal-fest-2026/1668',
  'Low-medium fit because the bill is extreme/black/death oriented, but the Slovak booking proves cross-border capability.',
  'SNS-163',
  'one-day palace-ground metal festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced',
  '22 August 2026', 'unknown; recommended autumn 2026', NULL
FROM festivals WHERE external_id = 'SNS-163';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 41,
  7.5, 3, 11.1,
  0, 4, 6,
  9, 'D', 'Low',
  'Monitor', 'verified: Doomas (Slovakia) in 2026',
  'Arkona, Doomas, Dymna Lotva, Heretique, Supreme Void', 'Low-medium fit because the bill is extreme/black/death oriented, but the Slovak booking proves cross-border capability.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 168,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-163';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://hellshorde.com/event/666-united-metal-fest-2026/1668', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-163';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Contact event/venue social channel; no form found.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-163'
  AND festival_editions.edition_year = 2027;

-- SNS-164: uROCK Młodych
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'uROCK Młodych local partners' ORDER BY id LIMIT 1),
  'uROCK Młodych',
  'Bystrzyca Kłodzka',
  'rock, live band music',
  'small local',
  'https://urockmlodych.pl/',
  NULL,
  NULL,
  'https://urockmlodych.pl/',
  'Not eligible for the youth program, but potentially useful as a guest act/clinic if the municipality wants an international mentor band.',
  'SNS-164',
  'municipal youth rock festival',
  'small'
FROM countries
WHERE countries.name = 'Poland';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'not announced; young recurring event',
  '19 September 2026', 'unknown for guest bookings', NULL
FROM festivals WHERE external_id = 'SNS-164';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 40,
  15, 1.5, 3,
  4.5, 4.8, 6,
  5, 'C', 'Low',
  'Monitor', 'not verified',
  NULL, 'Not eligible for the youth program, but potentially useful as a guest act/clinic if the municipality wants an international mentor band.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 169,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-164';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://urockmlodych.pl/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-164';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Performer eligibility is age 15-21, live groups of at least two people; professional adult band is not eligible. Approach only for guest/headliner/mentor role.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-164'
  AND festival_editions.edition_year = 2027;

-- SNS-165: Hellhammer Open Air
INSERT OR IGNORE INTO festivals (
  country_id, organizer_id, name, city, genres, scale,
  website_url, instagram_url, facebook_url, source_url, notes,
  external_id, event_type, scale_category
)
SELECT
  countries.id,
  (SELECT id FROM organizers WHERE country_id = countries.id AND name = 'Hellhammer Klub / local promoter' ORDER BY id LIMIT 1),
  'Hellhammer Open Air',
  'Belgrade region',
  'black metal, death metal, thrash metal, extreme metal',
  'small',
  NULL,
  NULL,
  NULL,
  'https://www.abaddon-magazine.com/reviews/review-black-altar-vulture-lord-deathiah-manifesto/',
  'Low fit because of the extreme-metal focus. Retain for database completeness, not first-wave outreach.',
  'SNS-165',
  'Independent open-air extreme-metal festival',
  'small'
FROM countries
WHERE countries.name = 'Serbia';

INSERT OR IGNORE INTO festival_editions (
  festival_id, edition_year, application_status, status_text,
  date_text, application_window_text, notes
)
SELECT id, 2027, 'unknown', 'Not announced; 2026 presence verified, precise public booking data not found',
  '2026 edition reported as a three-day event near Belgrade', 'Unknown', NULL
FROM festivals WHERE external_id = 'SNS-165';

INSERT OR REPLACE INTO festival_research (
  festival_id, priority, is_stretch, total_score, genre_score,
  foreign_score, career_match_score, contact_score, economics_score,
  route_score, promotion_score, class_cap, confidence, pipeline_status,
  foreign_band_history, example_artists, fit_notes, next_action,
  last_verified, import_batch, source_row, created_at, updated_at
)
SELECT
  id, 'D', 0, 40,
  7.5, 3, 11.1,
  0, 4, 9.4,
  5, 'D', 'Low',
  'Monitor', 'true',
  NULL, 'Low fit because of the extreme-metal focus. Retain for database completeness, not first-wave outreach.', 'Monitor; do not contact until status changes',
  '2026-09-19', 'pilot-2026-09-19', 170,
  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
FROM festivals WHERE external_id = 'SNS-165';

INSERT OR IGNORE INTO festival_sources (festival_id, source_url, source_order, last_verified)
SELECT id, 'https://www.abaddon-magazine.com/reviews/review-black-altar-vulture-lord-deathiah-manifesto/', 1, '2026-09-19'
FROM festivals WHERE external_id = 'SNS-165';

INSERT OR IGNORE INTO applications (
  festival_edition_id, band_name, status, priority, assigned_to,
  submitted_at, follow_up_date, response_date, notes,
  application_method, next_action, response_text
)
SELECT
  festival_editions.id, 'Saints ''N'' Sinners', 'not_started', 'D',
  NULL, NULL, NULL,
  NULL, NULL, 'Locate the current Hellhammer Klub event page before outreach; no verified direct contact was published in the accessible source.', 'Monitor; do not contact until status changes', NULL
FROM festival_editions
INNER JOIN festivals ON festivals.id = festival_editions.festival_id
WHERE festivals.external_id = 'SNS-165'
  AND festival_editions.edition_year = 2027;

-- Import verification queries
SELECT COUNT(*) AS imported_festivals FROM festivals WHERE external_id LIKE 'SNS-%';
SELECT COUNT(*) AS imported_research_rows FROM festival_research WHERE import_batch = 'pilot-2026-09-19';
SELECT COUNT(*) AS imported_sources FROM festival_sources;
SELECT COUNT(*) AS imported_applications FROM applications WHERE band_name = 'Saints ''N'' Sinners';

