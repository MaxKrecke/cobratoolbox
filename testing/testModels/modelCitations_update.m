function x = modelCitations()
%Each row: species, version, fileName, PMID, doi;

oriFolder = pwd;

%Testing modelCitations directory switch
find = what('testModels') 
test_directory = find.path; 
cd(test_directory);

x = 1;

%Initial unsorted file
modelMetaData={...
'Escherichia coli','core','Ecoli_core','','doi:10.1128/ecosalplus.10.2.1';...
'Lactococcus lactis subsp. MG1363','','L_lactis_MG1363','23974365','';...
'Homo sapiens','Recon2.05','Recon205_20150128','23455439','';...%version
'Streptococcus thermophilus','','Sc_thermophilis_rBioNet','19346354','';...%is this the Pastink et al one?
'Thermotoga maritima','v1','T_Maritima','19762644','';...
'Escherichia coli','iAF1260','iAF1260','17593909','';...
'Methanosarcina barkeri','iAF692','iAF692','16738551','';...
'Bacteroides thetaiotaomicron','iAH991','iAH991','23022739','';...%not in Palsson list
'Dehalococcoides ethenogenes','iAI549','iAI549','20811585','';...
'Yersinia pestis','iAN840m','iAN840m','19396373','';...% Yersinia pestis, S 825 x 1020,  Navid and Almaas, iAN818m?
'Bacillus subtilis','iBsu1103','iBsu1103','19555510','';...
'Clostridium beijerinckii','iCB925','iCB925','21846360','';...
'Helicobacter pylori','iIT341','iIT341','16077130','';...
'Synechocystis sp.','iJN678','iJN678','22308420','';...
'Pseudomonas putida','iJN746','iJN746','18793442','';...%not in Palsson list
'Escherichia coli','iJO1366','iJO1366','21988831','';...
'Pseudomonas putida','iJP815','iJP815','18974823','';...
'Escherichia coli','iJR904','iJR904','12952533','';...
'Burkholderia cenocepacia','iKF1028','iKF1028','21609491','';...%not in Palsson list
'Methanosarcina acetivorans','iMB745','iMB745','22139506','';...
'Saccharomyces cerevisiae','iMM904','iMM904','19321003','';...
'Saccharomyces cerevisiae','iND750','iND750','15197165','';...
'Mycobacterium tuberculosis','iNJ661','iNJ661','17555602','';...
'Rhodobacter sphaeroides','iRsp1095','iRsp1095','21777427','';...%not in Palsson list
'Staphylococcus aureus','iSB619','iSB619','15752426','';...'
'Mus musculus','iSS1393','iSS1393','23022739','';...%not in Palsson list
'Plasmodium falciparum','iTH366','iTH366','20823846','';...%not in Palsson list
'Thermotoga maritima','iTZ479v2','iTZ479_v2','','doi:10.1016/j.ijhydene.2012.06.032';...%not in Palsson list
'Klebsiella pneumoniae','iYL1228','iYL1228','21296962',''};

%Correct file output for comparison
modelComparator = {'Bacillus subtilis','iBsu1103','iBsu1103','19555510','';'Bacteroides thetaiotaomicron','iAH991','iAH991','23022739','';'Burkholderia cenocepacia','iKF1028','iKF1028','21609491','';'Clostridium beijerinckii','iCB925','iCB925','21846360','';'Dehalococcoides ethenogenes','iAI549','iAI549','20811585','';'Escherichia coli','core','Ecoli_core','','doi:10.1128/ecosalplus.10.2.1';'Escherichia coli','iAF1260','iAF1260','17593909','';'Escherichia coli','iJO1366','iJO1366','21988831','';'Escherichia coli','iJR904','iJR904','12952533','';'Helicobacter pylori','iIT341','iIT341','16077130','';'Homo sapiens','Recon2.05','Recon205_20150128','23455439','';'Klebsiella pneumoniae','iYL1228','iYL1228','21296962','';'Lactococcus lactis subsp. MG1363','','L_lactis_MG1363','23974365','';'Methanosarcina acetivorans','iMB745','iMB745','22139506','';'Methanosarcina barkeri','iAF692','iAF692','16738551','';'Mus musculus','iSS1393','iSS1393','23022739','';'Mycobacterium tuberculosis','iNJ661','iNJ661','17555602','';'Plasmodium falciparum','iTH366','iTH366','20823846','';'Pseudomonas putida','iJN746','iJN746','18793442','';'Pseudomonas putida','iJP815','iJP815','18974823','';'Rhodobacter sphaeroides','iRsp1095','iRsp1095','21777427','';'Saccharomyces cerevisiae','iMM904','iMM904','19321003','';'Saccharomyces cerevisiae','iND750','iND750','15197165','';'Staphylococcus aureus','iSB619','iSB619','15752426','';'Streptococcus thermophilus','','Sc_thermophilis_rBioNet','19346354','';'Synechocystis sp.','iJN678','iJN678','22308420','';'Thermotoga maritima','v1','T_Maritima','19762644','';'Thermotoga maritima','iTZ479v2','iTZ479_v2','','doi:10.1016/j.ijhydene.2012.06.032';'Yersinia pestis','iAN840m','iAN840m','19396373',''};

%sort the models alphabetically by the species
[tmp,indicies]=sort(modelMetaData(:,1));
modelMetaData=modelMetaData(indicies,:);

%Test check parameters based upon the data array
if ~isequal(modelComparator, modelMetaData)
    fprintf('\nIncorrect model parameters for modelCitations\n');
    x=0;
else 
    fprintf('\nTest for modelCitations suceeded\n')
end
cd(oriFolder);
end
