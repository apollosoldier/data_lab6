clear;
clc;
fichiertext = dir('*.txt') ; 
nombre_element = length(fichiertext) ; 
tableau_multiple =[];
for i = 1:nombre_element
    try        
        tableau_multiple        = [tableau_multiple,importdata(fichiertext(i).name)];
    catch
         fprintf('La taille de %s n est pas conforme\n', fichiertext(i).name)
        continue
    end
end
moyenne = mean(tableau_multiple,2);
plot(moyenne)
grid on;