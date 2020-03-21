echo "####################                Running Tests               ###########################"
echo "####################                Entmax               ###########################"
python fit.py --bs=128 --epochs=1 --sparse --tiny
echo "############################################################################################################"
echo "####################                Adaptive               ###########################"
python fit.py --bs=128 --epochs=1 --adaptive --tiny
echo "############################################################################################################"
echo "####################                Adaptive + Entmax              ###########################"
python fit.py --bs=128 --epochs=1 --adaptive --sparse --tiny
echo "############################################################################################################"
echo "####################                Loading checkpoint               ###########################"
python fit.py --bs=128 --epochs=1 --sparse --tiny --load_model=sparse_7
echo "############################################################################################################"
echo "####################              Testing evaluation                 ###########################"
python fit.py --bs=128 --test --adaptive --load_model=adaptive_6910
echo "############################################################################################################"
