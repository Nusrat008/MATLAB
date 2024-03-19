Ns = [21 , 101];
 w_cutoff = 2;
 Nfft = 512;
 tolerance = 1*exp(-1); % Works well for Nfft =512
 Hs = zeros (2, Nfft );
 for i = 1:2
 n = 0: Ns(i) -1;
 h = ( w_cutoff /pi)* sinc (( w_cutoff /pi)*(n - (Ns(i) -1) /2));
 
 figure (i);
 subplot (3 ,1 ,1);
 stem (n,h,'LineWidth', 3,'Marker', '.', 'Color', 'b'); title ( sprintf ('N = %d',Ns(i)));
 xlabel ('n'); ylabel ('h(n)'); grid on;
 
 subplot (3 ,1 ,2);
 Hs(i ,:) = abs ( fftshift (fft (h, Nfft )));
 ws = linspace (-1,1, Nfft );
 plot (ws ,Hs(i ,:),'LineWidth', 2.5,'Marker', '.', 'Color', 'g'); 
 title ('DFT magnitude '); 
 grid on;
 xlabel (' omega /\ pi '); ylabel ('|H(\ omega )|');
 
 subplot (3 ,1 ,3);
 % Right hand sided frequency and magnitude array
 ws_rhs = ws( Nfft /2 + 40 :end -40);
 H_rhs = Hs(i, Nfft /2 + 40 : end -40);
 
% Calculating the index of cutoff , stop band and pass band with -
 %to the right hand sided frequecy array ( ws_rhs )
 [Hmax , idx_pb ] = max( H_rhs );
 idx_sb = find ( H_rhs < tolerance ,1) ;
 idx_cutoff = idx_pb + find ( abs ( H_rhs ( idx_pb : idx_pb +50) - Hmax / sqrt(2))<tolerance,1);
 
 plot (ws_rhs , H_rhs ,'LineWidth', 2.5,'Marker', '.', 'Color', 'g'); hold on;
 plot ( ws_rhs ( idx_cutoff ), H_rhs ( idx_cutoff ),'o','LineWidth', 2.5 ,'Color', 'b'); hold on;
 
plot ( ones (1 ,2)* ws_rhs ( idx_sb ), [0 ,1.2] ,'LineWidth', 3,'Marker', '.', 'Color', 'g');
hold on;
plot ( ones (1 ,2)* ws_rhs ( idx_pb ), [0 ,1.2] ,'LineWidth', 2.5,'Marker', '.', 'Color', 'r');
 
txt1 = ' leftarrow Passband rightarrow ';
text( ws_rhs (idx_pb -5) ,0.5, txt1 ,'HorizontalAlignment','right ');
txt2 = ' leftarrow Stopband rightarrow ';
text( ws_rhs ( idx_sb +5) , 0.5 , txt2 );
 
title ('Indicating  omega_ {pb},  omega_ {sb},  omega_c '); 
grid on;
xlabel (' omega pi '); ylabel ('|H( omega )|');
xlim([ws_rhs(1), ws_rhs(end)]);
end
figure (3) ;
for i = 1:2
magdB = 20* log10 (abs( fftshift ( fft (Hs(i ,:) ,Nfft ))));
subplot (2 ,1,i);
plot ( linspace (-1,1, Nfft ),magdB,'LineWidth', 2.5,'Marker', '.', 'Color', 'r'); grid on;
title ( sprintf ('DFT dB magnitude with N = %d', Ns(i)));
xlabel (' omega pi '); ylabel ('20log |W(e^(i*omega )|');
end