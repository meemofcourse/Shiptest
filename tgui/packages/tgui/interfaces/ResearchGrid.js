import { useBackend } from '../backend';
import { Window } from '../layouts';

export const ResearchGrid = (props, context) => {
  const { act, data } = useBackend(context);
  return (
    <Window width={550} height={600}>
      <Window.Content scrollable>
        <button type="button" onClick={() => act('force-complete')}>
          Force Complete
        </button>
      </Window.Content>
    </Window>
  );
};
