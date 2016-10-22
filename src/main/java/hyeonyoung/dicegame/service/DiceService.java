package hyeonyoung.dicegame.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hyeonyoung.dicegame.enumclass.WinningStatus;
import hyeonyoung.dicegame.vo.Status;

@Service
public class DiceService {

	@Autowired
	Status status;

	final private int Goal = 29;

	public void initGame() {
		status.setAlphaValue(0);
		status.setCell(new int[30]);
		status.setCurCellForAlphaDice(0);
		status.setCurCellForUser(0);
		status.setUserValue(0);

		int cell[] = status.getCell();

		for (int i = 0; i < 30; i++)
			cell[i] = i;
	}

	public WinningStatus rollingDice() {

		int userValue = status.getR1().roll();
		int alphaValue = status.getR2().roll();

		int curCellForUser = status.getCurCellForUser() + userValue;
		int curCellForAlphaDice = status.getCurCellForAlphaDice() + alphaValue;

		status.setUserValue(userValue);
		status.setAlphaValue(alphaValue);

		status.setCurCellForUser(curCellForUser);
		status.setCurCellForAlphaDice(curCellForAlphaDice);

		if (curCellForUser > Goal && curCellForAlphaDice > Goal)
			return WinningStatus.Draw;
		else if (curCellForUser > Goal && curCellForAlphaDice <= Goal)
			return WinningStatus.Player;
		else if (curCellForUser <= Goal && curCellForAlphaDice > Goal)
			return WinningStatus.AlphaDice;

		else
			return WinningStatus.NotYet;
	}
}
