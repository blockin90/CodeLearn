import { SideMenuLinkGroup } from './models/SideMenuLinkGroup.ts';
import SideMenuSectionLinksList from './SideMenuSectionLinksList.tsx';

type SideMenuProps = {
  sections: SideMenuLinkGroup[];
};

function SideMenu(props: SideMenuProps) {
  return (
    <nav role="menu" aria-label="Sidebar" aria-orientation="vertical">
      <ul>
        {props.sections.map((section) => (
          <div className="border-default border-b px-6 py-5" key={section.id}>
            {section.title && (
              <div className="mb-2 flex space-x-3 font-normal">
                <span className="truncate text-sm font-medium text-zinc-900">{section.title}</span>
              </div>
            )}
            <SideMenuSectionLinksList links={section.links} />
          </div>
        ))}
      </ul>
    </nav>
  );
}

export default SideMenu;
